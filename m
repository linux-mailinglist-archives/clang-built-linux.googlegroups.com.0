Return-Path: <clang-built-linux+bncBDYJPJO25UGBB65LQ76QKGQEAMCHTOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 553852A59D3
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 23:13:17 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id h20sf11545367plr.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 14:13:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604441596; cv=pass;
        d=google.com; s=arc-20160816;
        b=iZoqZ/HlHpjltwhvOaXWgN+CUiyUTnicI+7YIBBL4SGVAGb3jzcectj2H11a8RALs5
         pyP0pjweWsv2h8k5W5c7tdE2j7lQhMmnSMf4UMJxZLfe9G6l4h0gwA+KWnsL3EoCiIbj
         ZbEGrsAFy0G5x9JZUfbgDr2OxGOImGhrWDjUKj+WFCSONn/8Bw7oLzoj9C6IMPEzqir4
         WC4rAYecqfWPEL5E6q6YiKlaSIYa+iUAPPrntmDkgaIHQ5ohykAHLzmMweSOc/UNcJ1b
         PQl33dWPtKrmrkHeCCFNi15knF1noxVN+HbqETyrKAMrsysY44Yj5JQCbONfVS1SfsBL
         +jUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eH7WW4VnTp6Xj8Ymwd6+oSSX5U+CbzxKne5YoNiWoeM=;
        b=0CnTL/6cCdZGiUaxH9rssqsSa/xBwbRkz2wtPSnzBHzLSA8aE+q9LtZN79Mg2//Mn8
         l9oJx1RLNvFqqAtv3na5s6D5oQset5tTLE5s2O165WS3XtF53WfzI29P5oPigSVvmYaS
         oLalmnayyAKMCwoAH43opMTl3MD/STtmgxoOq/UmHh+W8dDmrUyVFU3MTTMZJfQUgIAE
         xl8ZkiVpHGCCsRhhocVQiNzAFz4MbzvnwEEi81He5Dvbc6mXtbDmU9AJB7tUQU7dY5lU
         zuuZw0/hRbTC2j9ECr+Nimpe09GPO7UXbdLSFv4T88+/iU4NCgDDt/n0Vo2IzucnEgRt
         JJ/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="F/BOrbHN";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eH7WW4VnTp6Xj8Ymwd6+oSSX5U+CbzxKne5YoNiWoeM=;
        b=SWBWwl4Q2m2YFKmbUAP9yOHbBZrE4haLfG6mfBs/eRUkV9RKbhdVS0mE9OtwSXHKDq
         RxsQ8Gzv6+1apalDPSQp7FiZY9VfPvSWXaCvPpzxVa1jWnBCX9FNpINdkzhGP+NCj40z
         WIcQDucb35RpNHJRa/W8qLHycTtRWl+6AT5+nxUlSS0e5HyrJE22QI/nPGcf0tnAD0oE
         sdtCssmdB7wIpjCey0Zd3Mba/eV5qT3tQMljEHpRPGxW8GtrR+fzmmowo+y3Qh7KPwFy
         5UmncequrutWI/OMmpCByqdPZSpprAz3TU7LNLHudNNuxZz6hTa/r9ra/jCPBy6rx3UD
         18Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eH7WW4VnTp6Xj8Ymwd6+oSSX5U+CbzxKne5YoNiWoeM=;
        b=CAXFu/INzqFF6qMpHHygvPhzgvhUYhp3ltanDDXzjfD0CDRCk+V0SLyF+yhXL6t5lb
         ONjkznZeS1F3Q+bBHM7YUu6ojU8OAevGzkLWuArDAQ95aY9EGtqqnq3Vx8MyV2cHstHB
         SilM35gPy5vjE8ydOGESh4iBeCTgkBkgqL9/Jn0PGEGZ3C17CB/b7UoJpI0qrVrSGuTo
         SPRBtmfcT5Z1x6/NbTJPT3r0cvRwFHk+/W0bnkPytuqFu5bfYBq3O0+dU9Zw7cjTdi4b
         RBKyJ3B5iY4RiGsQ/7iP0+4Wc05seltPd2rV3/A/Ah4A5sPnUZUip0kMhRbcocp4/1iu
         eolQ==
X-Gm-Message-State: AOAM532eip4ZeImmANgTfbPESImhIAw6oeY5jpX7+UcvYZm/e7K3Wz1J
	ML+eFgAQ/bUdI7k7ONyWEII=
X-Google-Smtp-Source: ABdhPJwncCWcHy0UzbP1Du18P4k6MHD9u6/iQ4mVBO7LWSRCHs3zaU4R+jC4VR7V5rX475dcjhcYoA==
X-Received: by 2002:a63:7d49:: with SMTP id m9mr19059887pgn.60.1604441595970;
        Tue, 03 Nov 2020 14:13:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:483:: with SMTP id 125ls45673pfe.6.gmail; Tue, 03 Nov
 2020 14:13:15 -0800 (PST)
X-Received: by 2002:a62:2b88:0:b029:163:c6fb:f2a with SMTP id r130-20020a622b880000b0290163c6fb0f2amr26899895pfr.7.1604441595323;
        Tue, 03 Nov 2020 14:13:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604441595; cv=none;
        d=google.com; s=arc-20160816;
        b=PcFKp+N7Ycggn/c8RC9zPIpM7JOkVZC6/92y9VGeiHZOzK7EHQdhgFi5Gz4opI5XON
         VRKhj6i3o7NZhQk1mGVwO/r2LXUkN2UUW5Jx72xgWuMc8B5mTtyeGHVJQUY3bIOoHpcG
         DP/tvdALgi6CqEda/EiOTvriRuHLWPL4NAcZg2L+8ruIYgWCBFrWJSgCsjUrBnDVsK/9
         e7BwTA3umXMqQ1/Dkw7FzgTo2xILmutWijcqZQ8FtwvqjjBdhsqpwLyvWzcgHtsH8BdC
         tujgJt7LK/Xdc4o2sqz+C2i9BCyPncn3x9f5Z3kiFy2GzC8A/eMta6LpVGfrcB+iRAGq
         0cUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zwwyyZlsxtPwtkYdyrHXKpl0bLG1w1dXTG/u61TKkGA=;
        b=QH6T6QjHslZRc4neaXgerp8gwN/eK61QwG6ZvjwT89+yZeauSIB1ZXInk3AyzZyPsj
         hvvj/YAq8holtTJ1zKB8hq1oibOfxt4pYhh2w/XvUFESFN7DC3nNdCDy6c2VUKZm94XE
         3s5POdpgClnOCLz1N/hqY2zfcCGhep0B04BsjBajR0LhhTghGagx67d6rkMHmSfFwXXB
         L9F3JnAnGHqrLuqqzecSti5ff0KSbj6rKMZ+SyosDz3BXbUBl15uyqY8UQWz5bxKVLrZ
         621NqPGqkGHoIx3KcANdMQxDd5CbIZEKOkP03nRDeaUlZklUR/g0H/f7hji+e873XIV7
         Rqog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="F/BOrbHN";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id l192si6938pfd.6.2020.11.03.14.13.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 14:13:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id t14so14822394pgg.1
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 14:13:15 -0800 (PST)
X-Received: by 2002:aa7:9a04:0:b029:163:fe2a:9e04 with SMTP id
 w4-20020aa79a040000b0290163fe2a9e04mr28701717pfj.30.1604441594716; Tue, 03
 Nov 2020 14:13:14 -0800 (PST)
MIME-Version: 1.0
References: <20201022012106.1875129-1-ndesaulniers@google.com> <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
In-Reply-To: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Nov 2020 14:13:03 -0800
Message-ID: <CAKwvOdm3G1MPR38JckB9Dgg--=M90qimOcum2a18vvp+Gh9S2A@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: implement support for DWARF5
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	Jakub Jelinek <jakub@redhat.com>, Alistair Delva <adelva@google.com>, Nick Clifton <nickc@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="F/BOrbHN";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Sun, Nov 1, 2020 at 6:21 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Thu, Oct 22, 2020 at 10:21 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> > new file mode 100755
> > index 000000000000..82c0eea45845
> > --- /dev/null
> > +++ b/scripts/test_dwarf5_support.sh
> > @@ -0,0 +1,4 @@
> > +#!/bin/sh
> > +# SPDX-License-Identifier: GPL-2.0
> > +set -eu
> > +echo ".file 0 \"asdf\"" | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
>
>
>
> Please tell me how this script detects the dwarf-5 capability.

Ah, sorry, I should have put more context.  Specifically, I wrote this
patch initially back in May, but testing combinations of:
- GCC + GNU as
- Clang + GNU as
- Clang + LLVM_IAS
I hit a few snags in GNU as.  I reported the issues, and they were
quickly fixed.  The fixes shipped in binutils 2.35 (or 2.35.1 as Jakub
notes).
https://sourceware.org/bugzilla/show_bug.cgi?id=25611
https://sourceware.org/bugzilla/show_bug.cgi?id=25612
https://sourceware.org/bugzilla/show_bug.cgi?id=25614 <-- .file 0
https://sourceware.org/bugzilla/show_bug.cgi?id=25917

This script is doing feature detection of `.file 0` directives (which
is new in DWARF5) in the assembler and actively emitted by Clang.  I'm
happy to add whatever other unit tests might be interesting for
detecting correct support for various features, if we find them to be
required, which I'd say `.file 0` certainly is.

Probably could test GCC + LLVM_IAS, too.

Hence we need to test compiler and assembler support; either may be lacking.

> This script fails for GCC 10.

What is your version of binutils? Less than 2.35 I suspect?  If so,
then that's expected and the script is working as intended.

Thanks for your feedback, I'll try to get a v2 out this week
incorporating feedback from you, Fangrui, and Jakub.

>
>
> masahiro@grover:~/workspace/linux-kbuild$
> ./scripts/test_dwarf5_support.sh  clang
> masahiro@grover:~/workspace/linux-kbuild$ echo $?
> 0
> masahiro@grover:~/workspace/linux-kbuild$
> ./scripts/test_dwarf5_support.sh gcc-10
> {standard input}: Assembler messages:
> {standard input}:1: Error: file number less than one
> masahiro@grover:~/workspace/linux-kbuild$ echo $?
> 1
>
>
>
>
> The manual says the fileno should be "a positive integer".
>
>
>   .file fileno filename
>
>   When emitting dwarf2 line number information .file assigns filenames
> to the .debug_line file name table.
>   The fileno operand should be a unique positive integer to use as the
> index of the entry in the table.
>   The filename operand is a C string literal.
>
>   The detail of filename indices is exposed to the user because the
> filename table is shared with the
>   .debug_info section of the dwarf2 debugging information, and thus
> the user must know the exact indices
>   that table entries will have.
>
>
>
> So, I modified the script as follows:
>
>
> masahiro@grover:~/workspace/linux-kbuild$ git diff
> diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> index 82c0eea45845..8d7213e8e51f 100755
> --- a/scripts/test_dwarf5_support.sh
> +++ b/scripts/test_dwarf5_support.sh
> @@ -1,4 +1,4 @@
>  #!/bin/sh
>  # SPDX-License-Identifier: GPL-2.0
>  set -eu
> -echo ".file 0 \"asdf\"" | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
> +echo ".file 1 \"asdf\"" | $* -Wa,-gdwarf-5 -c -x assembler -o /dev/null -
>
>
>
>
> masahiro@grover:~/workspace/linux-kbuild$ ./scripts/test_dwarf5_support.sh  gcc
> masahiro@grover:~/workspace/linux-kbuild$ echo $?
> 0
>
>
>
> But, GCC 4.9 also passes this check.
>
> masahiro@grover:~/workspace/linux-kbuild$
> ~/tools/aarch64-linaro-4.9/bin/aarch64-linux-gnu-gcc --version
> aarch64-linux-gnu-gcc (Linaro GCC 4.9-2016.02) 4.9.4 20151028 (prerelease)
> Copyright (C) 2015 Free Software Foundation, Inc.
> This is free software; see the source for copying conditions.  There is NO
> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
>
> masahiro@grover:~/workspace/linux-kbuild$
> ./scripts/test_dwarf5_support.sh
> ~/tools/aarch64-linaro-4.9/bin/aarch64-linux-gnu-gcc
> masahiro@grover:~/workspace/linux-kbuild$ echo $?
> 0

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm3G1MPR38JckB9Dgg--%3DM90qimOcum2a18vvp%2BGh9S2A%40mail.gmail.com.
