@if ($paginator->hasPages())
    <ul class="pagination list-inline">
        {{-- Previous Page Link --}}
        @if ($paginator->onFirstPage())
            <li class="pagination__item disabled" aria-disabled="true">
                <span class="pagination__link"><i class="bi bi-arrow-left pagination__icon"></i></span>
            </li>
        @else
            <li class="pagination__item">
                <a href="{{ $paginator->previousPageUrl() }}" rel="prev" class="pagination__link">
                    <i class="bi bi-arrow-left pagination__icon"></i>
                </a>
            </li>
        @endif

        {{-- Pagination Elements --}}
        @foreach ($elements as $element)
            {{-- "Three Dots" Separator --}}
            @if (is_string($element))
                <li class="pagination__item disabled" aria-disabled="true">
                    <span class="pagination__link">{{ $element }}</span>
                </li>
            @endif

            {{-- Array Of Links --}}
            @if (is_array($element))
                @foreach ($element as $page => $url)
                    @if ($page == $paginator->currentPage())
                        <li class="pagination__item pagination__item--active" aria-current="page">
                            <span class="pagination__link">{{ $page }}</span>
                        </li>
                    @else
                        <li class="pagination__item">
                            <a href="{{ $url }}" class="pagination__link">{{ $page }}</a>
                        </li>
                    @endif
                @endforeach
            @endif
        @endforeach

        {{-- Next Page Link --}}
        @if ($paginator->hasMorePages())
            <li class="pagination__item">
                <a href="{{ $paginator->nextPageUrl() }}" rel="next" class="pagination__link">
                    <i class="bi bi-arrow-right pagination__icon"></i>
                </a>
            </li>
        @else
            <li class="pagination__item disabled" aria-disabled="true">
                <span class="pagination__link"><i class="bi bi-arrow-right pagination__icon"></i></span>
            </li>
        @endif
    </ul>
@endif
