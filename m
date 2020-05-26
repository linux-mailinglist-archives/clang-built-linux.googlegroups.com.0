Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKETWX3AKGQECYGS7TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 985091E27B9
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 18:54:01 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id d9sf16036022pll.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 09:54:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590512040; cv=pass;
        d=google.com; s=arc-20160816;
        b=eIq0yEOo5MZcrT+8VLxuvIzMbByQhZ3HfauKrWSJfQxS/aWzZMPHHRu0sBwdEwicRu
         815mYfkM+aev9+sWiTuHRlxuSs5jN4G8Jk76EkzVzHE0rR1oCxyST9alKzdRYmB0h9t4
         Zv2XsJ/8N1XMZhH2/iZ5Ib2SrZ8xCeLHqDfh46yLlirDASRwCGSl4JtZkohXK66CtY0O
         NkT+WKECY30n7Vvp1TuRv9BsyWnqKELucR9Zr2mCUgxruWJWaLLyM2RnBeUxVRoYO4/U
         7t//J/j75J+jwSHX9nia61mtCwxnMoUxsgwEufxjavrnA+lJSL6O9jh6OEJWvgMCP2Es
         tt/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wPjZeZSCRL5oV4NARUnLKp7fsRpesjQH9QH8xWRCxO0=;
        b=dfVVNn4dnaorG5cXOO8YDGvDydGvYdn2Uvdmj7/WthgrTjfBnPvPTvQDNaeHfOvhmD
         kdCN/9sMqTNFw6armozyPMlNnK7EUDDKrUQN5+h175v8FM5LD43eYETADrKpNmRmKDDz
         u01tnfPZ//eLPkJOJGFy+kSJhsz6llDvillvSXMYEiYN9RU08kZIGG3gYMjngUBo7Jd3
         Q0zrZ6oYmWKY9Rrps/XD9A8RqhIUgmwhJeSqeJW+pSo6q9BoTp/ioVmRdk+KwaiWUIMV
         Tpsf5bk3Rt1j3M8BULR6nDGHmLY3NSxpiCxVmxxCaeHK3H2bUe/2WA1RdgBR2C1Dv0UJ
         nfAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rZroSeUn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wPjZeZSCRL5oV4NARUnLKp7fsRpesjQH9QH8xWRCxO0=;
        b=n9jFS5PNvgypQ6SIm0Bw5KTmeuZTzeosbYyH1tEjIBv5qokAc0NQ9xSfMVul40rC8c
         dCLCuNO65ineAty8UAL9jVj4EzA7G0JJfnbNj0yfgmDjcPo4XuJemDjJAauNX97XFbHG
         mNTy/T1Jnnvf+9ZfEkKr9YMdJW4pMLspg0saXkonJxcSD74x0H2FtK9/e37gn2ZVPOVO
         Vjk86oLViBF15iYBO6Wd20rtfgY0vVeo5n1CERP77TfZBDr2fZaO/XpCGK9zlinyla7i
         D7r0tBFbwkDaDXj5RgNzWb1EFbsytkbPuBwGnUnZwZtWN0T8JqV1qN+s+vXMLwzyJnWA
         axmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wPjZeZSCRL5oV4NARUnLKp7fsRpesjQH9QH8xWRCxO0=;
        b=pzZ5ZnjUA8E7dIppis2060ntU8m7lKkS3yqtVgJE7Mly2OxV8TpllZbrWCXcIVwAgW
         0ES81eRAqmgfcCubiYviaF6JkxekEFXzQC0A8MbxIOYzub7qRIZIK9Qmlr+51aYCC0mk
         MD3hKYIzApq7Wc3UVjtlQ6T+26FDa0MIJE9et/sNUTujVShjW8lz+PdqQ5s1cgdIkCoF
         tQjmysRLa918sc6jaxc6KQgCnVUZDb3zKX1PC2RL+Bn1sobPZmZecygkBIOEdHGI24lk
         /uOZjBVQH0t89OWTN5BCLESJXFJMJThq6Jc3f/6rm8+2RGEOx9psACXIaqeTEH2r+rs7
         /Fbw==
X-Gm-Message-State: AOAM532l2i2dqNBzLSgwAj5o7h5EufCh1OwKAn8MS3gjTDGdE+TUCxgF
	uFWy8iW+R4/yhNZFLfBbru0=
X-Google-Smtp-Source: ABdhPJwY5cglgMTZ5jLPM0I6t2P6ZoDzlv+kUKa4pyY58DLvZeAwqvPI5XuNK9eWrR543uah3FuD0g==
X-Received: by 2002:a17:90a:64c6:: with SMTP id i6mr192234pjm.14.1590512040234;
        Tue, 26 May 2020 09:54:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a605:: with SMTP id u5ls1882258plq.9.gmail; Tue, 26
 May 2020 09:53:59 -0700 (PDT)
X-Received: by 2002:a17:902:d311:: with SMTP id b17mr628242plc.82.1590512039835;
        Tue, 26 May 2020 09:53:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590512039; cv=none;
        d=google.com; s=arc-20160816;
        b=U3AJnhWEcqvCQK8GKT8jfL76O5YOanbcOor7TG1GKyX2hb+ovQzcMm+THJurEMGkX1
         VYmBOBCLxtYM6cc6/t7UU9olf0vb95HJvCM98MR3flmkdm7WNO/DwL9o/r2LbHNf6393
         by7tdsLPe/UTHd5hT8vXlBiurvz4LEwd47sOv04OJ/glU0YHtEUI4S8ONReyipzF88YI
         paToZCaN+1KX/siljPLqH3caW7J7ntcAhOVi6937YYK8oIXnKqpiy1SFcpqX9F+VwUoL
         VWHFDB/BaUOhCnaNESQCETcbdtMLaNgzGL3dHwSKfu3Bb7C1XIRJaNMyH+QK0NaaSot4
         rfrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AF5B89TG8C1c9LxKfGn56PDf0mXBAFYjA7XNnBi1JYY=;
        b=qnjI8z/IT2Mi1wO63PzilgTOTTkYjhUToYJDsM3nQpsQn5PjWS5Ic/KhfGqluLAHzQ
         JCVtOcTXySiflDaSknZ/8cBEllzUuYTFydTtNYUdhYFsv6wLnHf9XTsBWp3RzY0YI7Ab
         wHsxg1CACSUZ29x0CBn1m3/nlV6fVj81dcEnQIay6UkTQw8fKSTOQbm7XSJZtioWI3Jb
         QX3QWCLpnNHNPNiGjJx3lWVbJrNYKn9TnBI7b7Nz1pdZ9OtWIw0YfqlSGrP8wqQIMiIk
         4xTZcIulEu8BJc4AqVJIqNz6aNSL5bI80fARHledwh2rnCZ4oINhuZ7BsWOeqDEpbaol
         PXew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rZroSeUn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id q1si29036pgg.5.2020.05.26.09.53.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 09:53:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id x10so8906910plr.4
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 09:53:59 -0700 (PDT)
X-Received: by 2002:a17:902:341:: with SMTP id 59mr1811404pld.119.1590512039128;
 Tue, 26 May 2020 09:53:59 -0700 (PDT)
MIME-Version: 1.0
References: <202005231418.iVv6BaVV%lkp@intel.com> <20200523210231.GC2483@worktop.programming.kicks-ass.net>
In-Reply-To: <20200523210231.GC2483@worktop.programming.kicks-ass.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 May 2020 09:53:47 -0700
Message-ID: <CAKwvOdnRDbUXvfGsP9VX47nkuD3a8G_jWmGkH35cMcAATmgbvg@mail.gmail.com>
Subject: Re: [peterz-queue:sched/core 8/8] lib/math/div64.c:194:1: warning:
 attribute declaration must precede definition
To: Peter Zijlstra <peterz@infradead.org>
Cc: kbuild test robot <lkp@intel.com>, Oleg Nesterov <oleg@redhat.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rZroSeUn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Sat, May 23, 2020 at 2:05 PM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Sat, May 23, 2020 at 02:50:21PM +0800, kbuild test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/core
> > head:   42da62769d7de07bea28f81307723050f3339727
> > commit: 42da62769d7de07bea28f81307723050f3339727 [8/8] sched/cputime: Improve cputime_adjust()
> > config: x86_64-randconfig-a013-20200521 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3393cc4cebf9969db94dc424b7a2b6195589c33b)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         git checkout 42da62769d7de07bea28f81307723050f3339727
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> lib/math/div64.c:194:1: warning: attribute declaration must precede definition [-Wignored-attributes]
> > __weak u64 mul_u64_u64_div_u64(u64 a, u64 b, u64 c)
> > ^
> > include/linux/compiler_attributes.h:271:56: note: expanded from macro '__weak'
> > #define __weak                          __attribute__((__weak__))
> > ^
> > arch/x86/include/asm/div64.h:81:28: note: previous definition is here
> > extern __always_inline u64 mul_u64_u64_div_u64(u64 a, u64 mul, u64 div)
> > ^
> > 1 warning generated.
>
> So what is that thing complaining about?
>
> Why can't we have two fuctions with the same name and signature, one
> '__weak' and one 'extern __always_inline' ? GCC likes it just fine.
>
> clang folks?

Seems to be related to __attribute__((gnu_inline)) from the kernel's
redefinition of `inline`.
https://godbolt.org/z/q-tfYy
https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/commit/?h=sched/core&id=42da62769d7de07bea28f81307723050f3339727

Though, playing with this more, is this working as expected?
https://godbolt.org/z/jjrFKL
I thought the `extern inline` definition would be used only for
inlining, but the above case shows that's not the case when the
declaration doesn't contain `__attribute__((gnu_inline)) inline`?

Another question, how come the `__weak` definition of
`mul_u64_u64_div_u64` doesn't follow the convention of the rest of
lib/math/div64.c of using preprocessor guards?  Maybe that's more
appropriate than `__weak` definitions?
https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git/tree/lib/math/div64.c?h=sched/core&id=42da62769d7de07bea28f81307723050f3339727
(I think that's the way to go)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnRDbUXvfGsP9VX47nkuD3a8G_jWmGkH35cMcAATmgbvg%40mail.gmail.com.
