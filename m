Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7GH6DVAKGQEXS5N3QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DF1966B4
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 18:46:54 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id x10sf5197681pfa.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 09:46:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566319612; cv=pass;
        d=google.com; s=arc-20160816;
        b=UHtdWUhc/22ImcjLhp3XOiId2yMzb79Oel4KnJok4Q536WksGNm5lbPAXwnk3NWU6Y
         t1995MUWsCXF4KBmnu0K0/BUOz3b1DKwEmcJrxzUKQFhJWwFJxlBt2pdYmQic/MtonJW
         gg3sOTrmOCIxR2MAOX+UKOI6t0Mvq1WJ6gJZZZgZdxKw4/kgg/i6UPTf0SqD3DNYMaZj
         zVyJp+3qJ/8d9FwVwolFk2MaAK+gHryj8GIRMbbzt3wTzeBvm4ku/v0I36swGSLODy5d
         DChNthYeez+s7VuL5pVe8JXzTaLsk/yNjYX9ym3gIqmCsuX8a+5hTtqCPqJoFLrn9IUK
         Gckw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/izUnap2DK59tTgyXIBo+vr6y5FLR6tYU+8cxHInOMQ=;
        b=Y7dUAkSMsJcP/XhS1qgnTWzDtjipvAVSSZ8FoZKLc4jzPaI1YLKFjryvKKBBZYUwoA
         8KfOUyJmY3gJc9rVz+yXn0pux7o6GH3F6cfHzTXuui7lazCiBfpXzk2xi/XpLBBkMsnr
         i4qDZc6wpWbL285pkcfvReq3RYS21J/tKwoMoj+608jkb8/jeLe5bIhkTS9VauTSa+9N
         3M/ewASl4EdpLPcI7SG0mIGqnfXuvNABmS/9Dli9xZjRk497yK3pQvU6fnuVJSWWpLUz
         hww8jTkpBTnapY94pTd5vZqTzrP1FKmIVa/K8e3f76MJYzhU1IWHjR2AhjuHvaIuIUOE
         fGOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YBjMTvGX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/izUnap2DK59tTgyXIBo+vr6y5FLR6tYU+8cxHInOMQ=;
        b=EPD6zRwHVJhvaKShLCCmehco9yXD3Ip6mwCupbgzevYXufHTTL57bjJJf8gVv38UNo
         Kfa76zXrLSuJrAC6dI1bBod0duHRh5UJCPyGltutkqyKi1f8oQQ3gqzjTH12O5bfYPPc
         SG0nqJvgzdeFtq7p6+zraRPjHCA8JMi7rVwHsokB3XHogwGdrv0Bd9mSOOhgEeo0Nsgh
         sVV+s2FAuv27XxVVldk963603TpY8cFxcoZdrzmHWfGxQ3IOBT4Jk2/OcHlvddgRjXSn
         R34MFBDT+/Tj0o+PwJ7OGU5tcoLa0SMoxiReodILf5i+MJVymyYRDN7hY/d2GXRox4nG
         AzXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/izUnap2DK59tTgyXIBo+vr6y5FLR6tYU+8cxHInOMQ=;
        b=PJGNXPdj/X1kiPfE2HsxZnk0MPeCLjnz2apkqdLw+QzdKhQfaaMd6C17ZPGGlE/nkL
         g3202j0ypfQI64CXKAkgF/JNMGestRqGpf2BqF1DeUMloMLT7IX5JscVwWjWAANPA2+A
         laPc+fySj0zqlQLj/O0QaWGcxrt1MSq+ALvv5NLEB3q3d3atg5rgb2mO/5Zn4sF8bQj9
         ROALeqxxcppFdgrAlm0moGzgx5f2925bAMzzpq563y1AKruGkGvyALeyCZ8TTIraJpYW
         LfGzW9/i1lf6yh7RlpjaP+vhSDKYtc29qqbYhvNaBMqzF2F4AD9+cstYigMgHgj3/pWo
         kR4g==
X-Gm-Message-State: APjAAAWSmpbJU+vtYgYlYBs0MXIrBHLesoiCgtLCt6KcGCZ2XsCFJrJE
	zhznWtDJiHgS6FSrhh2qNYk=
X-Google-Smtp-Source: APXvYqxC5YHSB6kMonZZk+9AqpjCrYVCdNUEXSG5++6x9djrhVDZAoSWsn2ZEzkQ9nxT7JZVcAF6jw==
X-Received: by 2002:a17:90a:3ad0:: with SMTP id b74mr865878pjc.79.1566319612219;
        Tue, 20 Aug 2019 09:46:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:db53:: with SMTP id u19ls1068123pjx.3.gmail; Tue, 20
 Aug 2019 09:46:51 -0700 (PDT)
X-Received: by 2002:a17:90a:3be5:: with SMTP id e92mr940472pjc.86.1566319611823;
        Tue, 20 Aug 2019 09:46:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566319611; cv=none;
        d=google.com; s=arc-20160816;
        b=jJ02Y4DNRafirc1HiviqM0rC332rzJ7CKjUXCKiY13Z1SVNhVTn/JatdA0vVktqYBR
         Tmtv8DLp40OQkjcUGt+TigsJo6Efy3d7/oy6vlY7uAXGt9hxsvMt1as9Z+65L87O/e/g
         Ev8EoKFx+dCrcNIQVDiQoNebh4VLww6GSho/xLs6zxIq+Uu6DcHBPilrop3czFe6TOhH
         Wc9t5usZWFSGDuYOyqPtpB9bq/7N49Yy3iGlFnQc6SuLHKbt7l0S/KJZwHrudYPKx0Xi
         Ho4Gvis3UZEP3fZ+lrSjMEXvOtigA7EG+ROnRJvWzTExgevePr5DUr05Or7yyE5UDyBl
         m3Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QFlgZBK7qJc7m/tFe4lGh2pPB3eIamiRWgMpWsINyUg=;
        b=vjmffir9oKc1rF9LIAXTjboIyxWKvLlo5rlWkSwEOhHoAkCmjsXmQhQ97pJyiEeQ6t
         HedM+jJ9SHo7QpJs0OBva8O/tWuXef2euEdwdHQHbR1/A3zWRkA8gTndvtuHVuLoXqSd
         naigT3KaFHD/U2azMmaSXzEAq+hG+4Fua6UgBYU1n6/GChn6EJqKrNDtkydmscx601N7
         XPOz3PbU0h1awCrjocFr/5WdP5x7fqthtwM8nex7rR28l++Qtx8K/Iu+xh1i+cG2HMT8
         EUM1gwMkP0pS5HaELWp3HqrcMudUrRjXXarT8PzAl3RpECLhLkmXklYYJs9HJsMC5buc
         6WYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YBjMTvGX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id h136si961924pfe.3.2019.08.20.09.46.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 09:46:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id q139so3707785pfc.13
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 09:46:51 -0700 (PDT)
X-Received: by 2002:a17:90a:c20f:: with SMTP id e15mr852930pjt.123.1566319611083;
 Tue, 20 Aug 2019 09:46:51 -0700 (PDT)
MIME-Version: 1.0
References: <201908162005.7Fg7QAeo%lkp@intel.com> <CAKwvOdnrjjRN1zXGoM=+t_Usv2EHecccDy0vOmLPeCe9jFQGNw@mail.gmail.com>
In-Reply-To: <CAKwvOdnrjjRN1zXGoM=+t_Usv2EHecccDy0vOmLPeCe9jFQGNw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Aug 2019 09:46:39 -0700
Message-ID: <CAKwvOdno4N37XbVDbu_qo1wCOGobrBuyAzcpshQB-zg2JX5pHg@mail.gmail.com>
Subject: Re: [feng:latencytop 16/20] mm/migrate.c:2069:5: warning: implicit
 conversion from enumeration type 'enum migrate_hmem_reason' to different
 enumeration type 'enum migrate_reason'
To: feng.tang@intel.com
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YBjMTvGX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

Sorry, just saw the rest of the thread on this...my mistake.

On Tue, Aug 20, 2019 at 9:45 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Hi Feng,
> Clang warns when implicitly converting from one class of enums to
> another.  If they're meant to share the same value, please add an
> explicit cast, otherwise there may be a bug here.
>
> On Fri, Aug 16, 2019 at 5:36 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@01.org
> > TO: Feng Tang <feng.tang@intel.com>
> >
> > tree:   feng/latencytop
> > head:   122e8adaba02569cd18c36a4a66ee43e0d78b04f
> > commit: 0090fba8904699bccce17dad9d22e46f2b4f29cf [16/20] swapcache migration patch
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 0090fba8904699bccce17dad9d22e46f2b4f29cf
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> mm/migrate.c:2069:5: warning: implicit conversion from enumeration type 'enum migrate_hmem_reason' to different enumeration type 'enum migrate_reason' [-Wenum-conversion]
> >                                    MR_HMEM_SWAPCACHE_PROMOTE;
> >                                    ^~~~~~~~~~~~~~~~~~~~~~~~~
> >    1 warning generated.
> >
> > vim +2069 mm/migrate.c
> >
> >   2033
> >   2034  /*
> >   2035   * Attempt to migrate a misplaced page to the specified destination
> >   2036   * node. Caller is expected to have an elevated reference count on
> >   2037   * the page that will be dropped by this function before returning.
> >   2038   */
> >   2039  int migrate_mapped_page(struct page *page, struct vm_area_struct *vma,
> >   2040                             int node, int is_numa_migration)
> >   2041  {
> >   2042          struct migrate_detail m_detail = {};
> >   2043          pg_data_t *pgdat = NODE_DATA(node);
> >   2044          int isolated;
> >   2045          int nr_remaining;
> >   2046          LIST_HEAD(migratepages);
> >   2047
> >   2048          /*
> >   2049           * Don't migrate file pages that are mapped in multiple processes
> >   2050           * with execute permissions as they are probably shared libraries.
> >   2051           */
> >   2052          if (page_mapcount(page) != 1 && page_is_file_cache(page) &&
> >   2053              (vma->vm_flags & VM_EXEC))
> >   2054                  goto out;
> >   2055
> >   2056          /*
> >   2057           * Also do not migrate dirty pages as not all filesystems can move
> >   2058           * dirty pages in MIGRATE_ASYNC mode which is a waste of cycles.
> >   2059           */
> >   2060          if (page_is_file_cache(page) && PageDirty(page))
> >   2061                  goto out;
> >   2062
> >   2063          isolated = numamigrate_isolate_page(pgdat, page);
> >   2064          if (!isolated)
> >   2065                  goto out;
> >   2066
> >   2067          list_add(&page->lru, &migratepages);
> >   2068          m_detail.reason = is_numa_migration ? MR_NUMA_MISPLACED :
> > > 2069                                  MR_HMEM_SWAPCACHE_PROMOTE;
> >   2070          nr_remaining = migrate_pages(&migratepages, alloc_misplaced_dst_page,
> >   2071                                       NULL, node, MIGRATE_ASYNC, &m_detail);
> >   2072          if (nr_remaining) {
> >   2073                  if (!list_empty(&migratepages)) {
> >   2074                          list_del(&page->lru);
> >   2075                          dec_node_page_state(page, NR_ISOLATED_ANON +
> >   2076                                          page_is_file_cache(page));
> >   2077                          putback_lru_page(page);
> >   2078                  }
> >   2079                  isolated = 0;
> >   2080          } else {
> >   2081                  count_vm_numa_event(NUMA_PAGE_MIGRATE);
> >   2082          }
> >   2083          BUG_ON(!list_empty(&migratepages));
> >   2084          return isolated;
> >   2085
> >   2086  out:
> >   2087          put_page(page);
> >   2088          return 0;
> >   2089  }
> >   2090
> >
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdno4N37XbVDbu_qo1wCOGobrBuyAzcpshQB-zg2JX5pHg%40mail.gmail.com.
