Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGW7QH5AKGQE3GH742I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8DC24E45A
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 03:06:36 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id r20sf1899044pgb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 18:06:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598058395; cv=pass;
        d=google.com; s=arc-20160816;
        b=wZIKptVHq3Cyw7+jkuOdRyHnCqbUJ/KIjRDmffh853KrUeTNqgOaWrnaPyzyQzMoiV
         JkIsdGHxRAadw4mIH3tVIvrOaEF+LE2ayswPZgxQJc6KxgIXegJSdB8jyINOt4Zp4fDS
         Xex5GezWPzaarmOh47NZJmAZdL0v9ule0/UhNcWuEaMTzp1SwEiiaZN0Zq0krhUWr1ie
         TUmeL7LU+9LZEygpBwvnhJd+V+lY22snhB4v9725Ge6q8w9hoPZ8SXEbaCUSTCzGI7uZ
         jdmUuvb6uona0PP231Wip8xqIgBb0Lgt8rYnb6ESNXvZ4PNJmmqM3JozNd8Fuz879y3e
         9tYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=np/9WIthV1Vpr5glmUTzA9UDxQLi7giavb9x7ip5Kvo=;
        b=uVgXJxMqqZIF2fk+5qJ+Cw/zhvZelFfM1feIyi4KXx2K7sXaioWuKp36C//IiTKs/P
         e9CbLeXYdNuojUmrOZ2xsyhxbjyjL38cGlbn6ph8MIXGFn90DHcfV9aZc+vFl0vwfOz9
         Pf5ygc8g3NN2PN6eSP+YFadOSZDLQRhcUDkeMrvghNZknJrod/pva9jXJqkHOu4gO7p4
         k6u5A02AtWcp2X4cp7sYfdmG0/If87CBeeqVzVlhUGysXWGLS8U1IGUjAbUr1jjjUECP
         5CdZ99Vm8iEtNUd4BVQXUhWI+NlGJJWWWH4/4r2X/StU8Gacn2Nwg+eC+anBIDbYif3M
         pr/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=efIZt6zU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=np/9WIthV1Vpr5glmUTzA9UDxQLi7giavb9x7ip5Kvo=;
        b=mr1pdWkj4TkDSZytZrHLeLrMkfd7EueV+YRT9+5CRUTRAA5mcIR+4ctsCzhPS9nxST
         CMYm6+AP1qAeRkkGM/4V+wFI+jAx6rV+1lGXUkLRT4vS/GF6WWnotgpeFLFkkxsUAZUw
         LcGpTzeJp6CWX8dRgOOni1vl6oTyLvfsNM10ZTJlNmaA0Rn/s/L2J6VKCNHKreQVzuT6
         U+B6w9cFiCY5tZ6rQndJLU9hYjb9LdmrMDwKsbdI97zBtEgq6pplIX7k9bgh1oF5gUZP
         mbhdAo4y4Dkmio3Y+nJsDb4vPSojBcNqMXtkKQIKTWIWaWDLBZVUah/Hs8TOA/1TWuwk
         YtAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=np/9WIthV1Vpr5glmUTzA9UDxQLi7giavb9x7ip5Kvo=;
        b=WwRRbeimWACNasvyhWj9ZtJ/bjXKzJ6iJKNctbT+rgp/lhwNkl/Ibbi2pEB5D+d7nV
         zbDnvbvU3VHuFNOtB9tx8oh+XEmuXOexOJyOdv8F+pwkca0a8o3LIjwSlaqwexY5rIWK
         KUG/XEfssWDjE1ZUWv8sZ6aKGUjqzyxMQ/uHhJ3l3tG1fdoX5a4alXnE83bAA5PEd99K
         Yzd2l/dzUoDsbuoDi2DLcKBIykqFmUWNVvuj3B67Y47zUuhf1z3KKeyeIoV9ZILVzhGS
         bqJCHbcNC5ZDPTxZC4kSOhzzVSHNUyg3bMU3ILOnDWVmmwwfaiUobK/obW+NtUAL2sCY
         rSrQ==
X-Gm-Message-State: AOAM532+NACwKqLczqSXHSHGTS1wEjyI5L5vl5z3ox8hjXpuAmILmM+u
	OZHmjxnZW85kKdFkip96gq8=
X-Google-Smtp-Source: ABdhPJxXNrY3UXdArvGBG84xpqqpWFCUFKAe87FJQ2AT5rZA0P89hwRvOWYWqhVFF/8Z33FnaCZmjQ==
X-Received: by 2002:a63:ca4e:: with SMTP id o14mr4189081pgi.213.1598058394964;
        Fri, 21 Aug 2020 18:06:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:130a:: with SMTP id h10ls1460935pja.0.canary-gmail;
 Fri, 21 Aug 2020 18:06:34 -0700 (PDT)
X-Received: by 2002:a17:902:ed13:: with SMTP id b19mr4512915pld.24.1598058394486;
        Fri, 21 Aug 2020 18:06:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598058394; cv=none;
        d=google.com; s=arc-20160816;
        b=H7IIkIOXrefeHCuz7tMi9NFlY9MKjAfjrK7av5XLYgssC0WRSnMufyTkmaTYE1+8d0
         Hlf/KXuzOXwtBav0UJyqN+/829ZqbWk5mhX6uleuNTbWMVX59Yo/GyaVN3Sm02Wjd/h5
         fKJ4dy5n+BrKlPXhzXIemhN2lBC/Kz/556ULHmF6kUFRaV+vm7170XoynIfW9/2FzTzH
         rFYSwUaJSEXqb62jWuxuOUO637j5SuWIfdVUsWlBtNQE+FDCr6QdLDQU9AJQnSVknmMv
         +Erh3cU7kj35DQeUYleCLUUcFzO2CaUA44QLJWT5QUgLW/kg+d9fnk1Ab7pFZaytxljC
         Sxhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QvEU7Ij1K+X8291+Yrk9PiVxlfdObr5ZQisT4NFhZNE=;
        b=j7c5WCQ6ND1Ifa+T0y+4K592kMvEndbdHDoQP+ZJxnncOfYVxBSUk/PSDthI+3PnJ/
         AJnUXMGjgFecpmHYcXob47HdPdwZuvcsRJ3Y+LyfDNCwOhCm/jgXoJVSxEweZxxDPTsf
         G3IxZpWJyC1RdTDNoR7BuinkFBxXdXwbt/N4Vuvd1DNPjngEGgCCQz+WDxioNul26DNb
         TiP2Mnnfvrwspo1PxX7tdsG97OLn4rEfAiHoqpnxiv3FF/1aChdI8SrG6eK7gSi8t8FG
         25XxUMfmKreUd25JkT8hy/j/cETlIvshREx29OGn1zBfCNUU19aU0r3A4H72lye9aTOd
         9ySg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=efIZt6zU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 76si216138pge.3.2020.08.21.18.06.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 18:06:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id x6so1774432pgx.12
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 18:06:34 -0700 (PDT)
X-Received: by 2002:a05:6a00:14d0:: with SMTP id w16mr4506224pfu.39.1598058393938;
 Fri, 21 Aug 2020 18:06:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200821190159.1033740-1-masahiroy@kernel.org>
In-Reply-To: <20200821190159.1033740-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 21 Aug 2020 18:06:22 -0700
Message-ID: <CAKwvOdkUfOnzWH1d7-qAP-PFvkLeahoA8jZdkZEp4-PNFXL_JA@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] kbuild: clang-tidy
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michal Marek <michal.lkml@markovi.net>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=efIZt6zU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Fri, Aug 21, 2020 at 12:02 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> I improved gen_compile_commands.py,
> then rebased Nathan's v7 [1] on top of them.
> To save time, I modified the Makefile part.
> No change for run-clang-tools.py
>
> "make clang-tidy" should work in-tree build,
> out-of-tree build (O=), and external module build (M=).
>
> This version keeps the previous work-flow.
> You can still manually run scripts/gen_compile_commands.json
>
> 'make compile_commands.json' or 'make clang-tidy' is handier
> for most cases. As Nick noted, there is 3 % loss of the coverage.
>
> If you need the full compilation database that covers all the
> compiled C files, please run the script manually.
>
> [1] https://patchwork.kernel.org/patch/11687833/

Thank you for the work that went into this series.  The only reason I
started focusing on compiling the kernel with Clang 3.5 years ago was
that I simply wanted to run scan-build (clang's static analyzer,
enabled by this series) on the kernel to find bugs to start
contributing fixes for.  Turned out compiling the kernel with Clang
was a prerequisite, and I've been distracted with that ever since.
Thank you both for completing this journey.

>
> Masahiro Yamada (8):
>   gen_compile_commands: parse only the first line of .*.cmd files
>   gen_compile_commands: use choices for --log_levels option
>   gen_compile_commands: do not support .cmd files under tools/ directory
>   gen_compile_commands: reword the help message of -d option
>   gen_compile_commands: make -o option independent of -d option
>   gen_compile_commands: move directory walk to a generator function
>   gen_compile_commands: support *.o, *.a, modules.order in positional
>     argument
>   kbuild: wire up the build rule of compile_commands.json to Makefile
>
> Nathan Huckleberry (1):
>   Makefile: Add clang-tidy and static analyzer support to makefile
>
>  MAINTAINERS                                 |   1 +
>  Makefile                                    |  45 +++-
>  scripts/clang-tools/gen_compile_commands.py | 245 ++++++++++++++++++++
>  scripts/clang-tools/run-clang-tools.py      |  74 ++++++
>  scripts/gen_compile_commands.py             | 151 ------------
>  5 files changed, 361 insertions(+), 155 deletions(-)
>  create mode 100755 scripts/clang-tools/gen_compile_commands.py
>  create mode 100755 scripts/clang-tools/run-clang-tools.py
>  delete mode 100755 scripts/gen_compile_commands.py
>
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkUfOnzWH1d7-qAP-PFvkLeahoA8jZdkZEp4-PNFXL_JA%40mail.gmail.com.
