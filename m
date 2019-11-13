Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYGLWHXAKGQEH5QX7ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A898FB9A2
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 21:21:53 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id d11sf2916018ild.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 12:21:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573676512; cv=pass;
        d=google.com; s=arc-20160816;
        b=WtdlbYcJkxo9Xo9Eiy9hdAckX11DKE7x+Sh3vxrmO3wKHPUyP7ORbGD1ANyPK/HZS0
         FBHm8iXqHZ4awpBUpmhuuwA40QFJ0aFDkfDeEJUGsQnlfUwM1wdIsaIQ6cK5l5p6GCzx
         j31Wvyjxwi24vlxpDFEj0C0SsoMGQVfC9mqdfoJC5wnMMrh29eQ947fVNalVgcIelvqb
         0Kt3iIBRxt/YCbEu6De1TjIetCIwv10yUldNZYkB56H8dLVAw8p7NbsQJeZ3A+mRK+pV
         3b4loA12hWm2laZiuqYOojyK1vmOD128aqJDXemyDvhyTkLC0Z8rzTc1EhnwSSM+xmdp
         HfbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=H/d+2MjAm8v8MBBZo0GBkLeEfBSEC2BPDY0L8cLo02s=;
        b=rRWRJJXkWCkD4+25OXtXfeu0JbfJiE6UYr8ZuV+m0cxUgBcyKhgX1UCd7gtOXfPYHk
         FrzXoJlATZgX+fOCIDcEHS5G/vXHpHIhaelzweVNHAV7ZZ/V4FzeOPopPkTjW2m/WOeV
         haBZAJwU4MzKdTtAo8/jvoYtSO8iSf2aVlCmcQLFu+3AbgNMBsobldqE0/SDgulJD5mY
         VpNSnPf1MWrx44fGUdcQCF6skcdOoQcJ+8Fc4t/q37dwxxqvy+GNMIPMVopI9dgUJ1QG
         UNiM1HDqLlLPOI4SID9PlDaj35WRilCTY579NAMugMeMas1UhrJU2uK6b2u/aZ0rIoOw
         BIAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LCNg1f86;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H/d+2MjAm8v8MBBZo0GBkLeEfBSEC2BPDY0L8cLo02s=;
        b=fSK4BMEEyrK4Iq4YqcdLCDDKKN8bXDZR6ADWLIDBeBZ7z6Xh4f59puWARNmI/2YkXl
         1qPsOGJrjvMVxngxkt9Wxj2fTNN3TwRDf1hIN9pLvk0tYeW6NNUdaHp0C5mzgDIi4XQo
         I3bAgZQJAIkwc3rKJTAqQBiEltNhwfGIrdiOnY9JrogwBSieSpEwpDY5otfnvaJabgcA
         hMYq2U8rJY08bHcjeUE4ll3HF8KY/H++yv1DFgydRfTjIqQO0SKQOTVrTs4Musr0rwiZ
         BHOg3uoFDbnJt8sG7hWpimjNmQ6KpS+aIjF9lIImTYGjQ3TsHp280MSGL2Em+w3nkpBH
         fmbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H/d+2MjAm8v8MBBZo0GBkLeEfBSEC2BPDY0L8cLo02s=;
        b=Zv73vP1wbj2szqoSLI4XgSX7VbEbzv0jWV61a6LqAnjmibP9ELLsfSlX5JrzmDVn7c
         Rp7Xvh86Nu4vaS8ktRcLnQAibEDdynGIalktM43Xztdt+UBfWH/z6bRI/fysWXRF4C2w
         Tobti6ScJq44WrZQVnDy/1GnJSCqjvZPervsVeJJTXZk9hw9UTLFyoQtalCzsVgQaenH
         1D+813q/h5acCIaIyOkKZR6gpob3nJCbGQ7yxVpUKUpkFXceauvMkrkUUpDVa6Dd2Udr
         JEq7FO4NQ0NVFlzCQ29+myfoV2Dp9qaDzResBXOsyTYqn7g5lQcSONGuB2kw3MONtXY7
         KJAw==
X-Gm-Message-State: APjAAAVzYChU7BA4c9vvJNOdivcIusGVXOiwN2WeoHXOJ2DhBkMM3OdI
	Gb+GpI16yy2delQrSmDQbZM=
X-Google-Smtp-Source: APXvYqxp4PCMomEHlNHY/NUh21xGdD6qi/V9Mf/NIflFFiYAacfZqd46DhH+1gk+RFiipxt/WdQCxg==
X-Received: by 2002:a6b:6f15:: with SMTP id k21mr5319352ioc.292.1573676512212;
        Wed, 13 Nov 2019 12:21:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2908:: with SMTP id l8ls669104ilg.3.gmail; Wed, 13 Nov
 2019 12:21:51 -0800 (PST)
X-Received: by 2002:a92:ba09:: with SMTP id o9mr6539472ili.6.1573676511867;
        Wed, 13 Nov 2019 12:21:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573676511; cv=none;
        d=google.com; s=arc-20160816;
        b=DViq68ACqUBWtaKgQXCxsI7o1FKew7ahUma2AWwODbOqwZa+8dc/9BS0seY0e3GotS
         DXIV7YzYhnRN2HJRwEqZVy7JP2h36//YMMcgBBmCDnhbZrcRwDOwS+OeMHvGBOf0D4Hk
         wkFSOb9GPs0bSNBOKF0vXsHwnRm6TdWa/t32diyQGI/6Ho9rJVJxA7noqlkOml0usmfv
         46SPos8xAPrwxO3Uu56AHanct+lpoAUZ3yPAXL89VAzKK7CSTPA6Wwd+voPWJd1TTbTd
         VDWbFXMuJfJBIZ6zYxtUZ6TEU77MR7k+yjc0ZKsBVHo9mAfgkBJjshLumvvma3/8dBJu
         TJBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yBtFKdTTwOdEpJntftbSiIvfMLr2w+6D1CtPpc+aOSo=;
        b=jDbtsvO5nLhAeU7b5Dqm46SJ//RQ3sOJqxcLUlNulh44C0TBHYHwMjhUkfQ//mmH2F
         trqCiU+YxfzDe+8AfQk4oayEyj5BYghUXwq1qePPJbEsrt5ZanqiDNu3eE/S9jvAAgjh
         Okn0YAr9Mf+NyBAkX9Azz+x9E8QHLSyuJmVYUnjdsu8Dn/Enhq4fu/njND34P6OtcT0z
         YoV60gLxMdbvBg7ZMT8gUlfCU0K7wQYKc8uhqR/jC/eAxtm78QzLzhzMBHSCgcayJZln
         4gSuOq4SOjfAEgjzKTpKfyBEH4rYzKdHwSsfwfhDjkm4L9TTK3vB7jPnApyw6hIbgyni
         Y8IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LCNg1f86;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id x8si210108ior.1.2019.11.13.12.21.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2019 12:21:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id 193so2376702pfc.13
        for <clang-built-linux@googlegroups.com>; Wed, 13 Nov 2019 12:21:51 -0800 (PST)
X-Received: by 2002:aa7:980c:: with SMTP id e12mr6685169pfl.165.1573676510765;
 Wed, 13 Nov 2019 12:21:50 -0800 (PST)
MIME-Version: 1.0
References: <201911140105.a5aulJde%lkp@intel.com>
In-Reply-To: <201911140105.a5aulJde%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 13 Nov 2019 12:21:38 -0800
Message-ID: <CAKwvOdm7Ydt4D4F6se3VOVtgwbL6+=zHBYr0b_16Nvf3dSpRPA@mail.gmail.com>
Subject: Re: [dhowells-fs:fscache-iter 23/33] fs/fscache/read_helper.c:258:2:
 warning: variable 'x_flags' is uninitialized when used here
To: David Howells <dhowells@redhat.com>
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LCNg1f86;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Wed, Nov 13, 2019 at 9:59 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> TO: David Howells <dhowells@redhat.com>
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git fscache-iter
> head:   f62d2e3b55357b54ea4a541e85200ecdccfce7b4
> commit: b546e3179314dd9f56dd09047dfdaf93a2baada3 [23/33] fscache: Add read helper
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 335ac2eb662ce5f1888e2a50310b01fba2d40d68)
> reproduce:
>         git checkout b546e3179314dd9f56dd09047dfdaf93a2baada3
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> fs/fscache/read_helper.c:258:2: warning: variable 'x_flags' is uninitialized when used here [-Wuninitialized]
>            x_flags |= fscache_shape_extent(req->io_handle, extent, i_size, false);
>            ^~~~~~~
>    fs/fscache/read_helper.c:239:23: note: initialize the variable 'x_flags' to silence this warning
>            unsigned char x_flags;
>                                 ^
>                                  = '\0'

Hi David, 0day bot flagged this from a Clang build. Warning looks
legit, can you please take a look?

>    1 warning generated.
>
> vim +/x_flags +258 fs/fscache/read_helper.c
>
>    209
>    210  /**
>    211   * fscache_read_helper - Helper to manage a read request
>    212   * @req: The initialised request structure to use
>    213   * @extent: The extent of the pages to access
>    214   * @requested_page: Singular page to include
>    215   * @pages: Unattached pages to include (readpages)
>    216   * @type: FSCACHE_READ_*
>    217   * @aop_flags: AOP_FLAG_*
>    218   *
>    219   * Read a sequence of pages appropriately sized for an fscache allocation
>    220   * block.  Pages are added at both ends and to fill in the gaps as appropriate
>    221   * to make it the right size.
>    222   *
>    223   * req->mapping should indicate the mapping to which the pages will be attached.
>    224   *
>    225   * The operations pointed to by req->ops will be used to issue or reissue a
>    226   * read against the server in case the cache is unavailable, incomplete or
>    227   * generates an error.  req->iter will be set up to point to the iterator
>    228   * representing the buffer to be filled in.
>    229   */
>    230  int fscache_read_helper(struct fscache_io_request *req,
>    231                          struct fscache_extent *extent,
>    232                          struct page **requested_page,
>    233                          struct list_head *pages,
>    234                          enum fscache_read_type type,
>    235                          unsigned int aop_flags)
>    236  {
>    237          struct address_space *mapping = req->mapping;
>    238          struct page *page;
>    239          unsigned char x_flags;
>    240          pgoff_t eof, cursor, start, first_index, trailer = ULONG_MAX;
>    241          loff_t i_size;
>    242          int ret;
>    243
>    244          first_index = extent->start;
>    245          _enter("{%lx,%lx}", first_index, extent->limit);
>    246
>    247          ASSERTIFCMP(requested_page && *requested_page,
>    248                      (*requested_page)->index, ==, first_index);
>    249          ASSERTIF(type == FSCACHE_READ_LOCKED_PAGE ||
>    250                   type == FSCACHE_READ_FOR_WRITE,
>    251                   pages == NULL);
>    252          ASSERTIFCMP(pages && !list_empty(pages),
>    253                      first_index, ==, lru_to_page(pages)->index);
>    254
>    255          i_size = i_size_read(mapping->host);
>    256          eof = (i_size + PAGE_SIZE - 1) >> PAGE_SHIFT;
>    257
>  > 258          x_flags |= fscache_shape_extent(req->io_handle, extent, i_size, false);
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911140105.a5aulJde%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm7Ydt4D4F6se3VOVtgwbL6%2B%3DzHBYr0b_16Nvf3dSpRPA%40mail.gmail.com.
