Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTWXTLXQKGQEEHLVJAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 00579110459
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Dec 2019 19:39:12 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id v2sf2161041plz.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Dec 2019 10:39:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575398350; cv=pass;
        d=google.com; s=arc-20160816;
        b=RYOOYCBANmSGfxOcF5BPJKpbNu00C+GfTNJmCMCzYkOd1aVBH3/LgDpf2QAch44IJm
         QUF4F0M9PKE/GT9IcFNw9MwiJtHvUSaAW8FiLYbCXP/fdEy5JLtmOzCDXEmVTgDW6yKy
         fxm1U3+yMy94UwoFDPkVj/whJWHPqq/1w/mub/0doWAUlljaeUfn9neNxcKmttMXFspA
         ep9RK6K4Mnr/bxLPFETz30Q54J+8fkJOr2MSLMGVukONMFFB1hrUNn2ea3YUZXWGAieq
         KwlBv2TpNnghKwZkxRxQALDSymPNdSa3Cr7uBS8kEyFiY7O3WkZh6ET74iR3In+wpiMX
         igvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HSkWVCvso15digA8KcLt+gB6Swj/nYO3uBiV2T9D/wY=;
        b=KnW4WnQUDslN4CfQJ7TiBnW7UER9igX+del8QHKpo5WBVAxoRx2UsPyilypC/E0Dp0
         V9KOSc1D0dJDX9bXJ756tn2yKOBQnsoBII6XGuPR+Ta0ay1I35g65+xAWOUsB1G6AlY+
         il55h4j9/C49tv1q0uYY+NSlsLsLTJ0FM2jgEGGAUbCBK4RQfiRvc2ppqtgR0twmgJgg
         v/SNGumsuSCIdGQ3BWBmve6thweFZ5450EDP6nSQDttrDDzrGW7h2oAIPMH/gL/QvZe/
         Bm/cYUU4NUs5vYthJ+iprK08chgCKCz+wBXmEbcNNE1um3eswGXXUnDWQ6Y4gYlGgoz7
         8l5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="gXWH1a/r";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HSkWVCvso15digA8KcLt+gB6Swj/nYO3uBiV2T9D/wY=;
        b=CHLqcQb5995A3LQHEpA9kPXRJXJcMvJmfkzjpMwVanfKea/6WnI14zzue7kOYvCydG
         xY41UMfO3kab4L0cv/Aus54EwWyRP7x1gOdYw2XeJ2iO0CSwVXTN3DU/vqFNyd/qqFQH
         3ZwM+25jcbuzeF5NaGGkjDWCtsewSbLdtWMrGjbbF9iMijcxpcUBLV7z0knCiT/mBKsH
         Ssr1Mrlb9e7LaGjqOkLBkHHj3uA5WC4kWSOrogJuv7dIMhwcKjZeKYB1Wi0Ubrp+P49h
         vHZbpc88ETupSdBz9hQApJl1ezICo95vdB74DM31IafKoemhj/1liY/L7DuoihYR16eO
         cqlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HSkWVCvso15digA8KcLt+gB6Swj/nYO3uBiV2T9D/wY=;
        b=hpsnwP5qDNug8HhjN1s7As5Vukc9vyNTawMeAqyJ7eJRnEiSW+7s3ncGIglI/ssB57
         Hqox6mxDuvncA27izBMpqoHRIiPhLMlDgBtaj5vQQBNLG/QEhBwdUya/nwimkOi2yQXF
         /kf1B7UA8OBjHNazDPwtonJKPLN1vxkoY4YOcVe0StFiR7yMOpnJ2g3gVKtreAj4ia04
         BWfyjCT2cDF0VudQB2KK08Axd5i1YQDtFiamhR9EbMlvij3cBLXH0PMbiZAXe4yNxjmd
         f923F2b00k6QcQNTP3esez6PPD5VC3jFQUa7LZ5jajZqZp0wCyUYilo1n6Tg57yU6hpI
         7IjQ==
X-Gm-Message-State: APjAAAUinDME8SoRXjHdPFyVYeLih+1wtjv8OwJ43xcFsmvbTMg4TcZG
	gAWZE0MEnjuntHEE0zNXl+E=
X-Google-Smtp-Source: APXvYqwK+sdP4G39CLOgemQawS2zrc7slIZ/ZDfG1Uy0kIr5MNoR0f9uuazxPCJKnsVmuJ949QvpSg==
X-Received: by 2002:a63:e653:: with SMTP id p19mr7041664pgj.109.1575398350602;
        Tue, 03 Dec 2019 10:39:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c04e:: with SMTP id z14ls966657pgi.5.gmail; Tue, 03 Dec
 2019 10:39:10 -0800 (PST)
X-Received: by 2002:a63:4e5e:: with SMTP id o30mr7301591pgl.112.1575398350073;
        Tue, 03 Dec 2019 10:39:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575398350; cv=none;
        d=google.com; s=arc-20160816;
        b=UJwj9Lt5xrAeCcNecEmSgqxYIOiynOmB4SFj96ob1BjRsMy0kdQKhgBarRX1ggsZcA
         Uomt2RQw+rpcccR9s207P8d3DLonSsjbOsT46+THEyCS8roQ5beSnKUZhDALg2pqJtlg
         dbw4ExyLC2EKjU0iHxlj0iySGirWRswt7ZwMUJ2PbbXglDQPYI9XxfoVpNjPVV9GOdMa
         KyFniR+wim+2yotFTWdznurWz1EYvpuoEr4UvjiElT0ApFAF7+HmNf8hbOgATXlHkirA
         JSubhAMKfnwqNgOI+oWbG2BrIniNnOVU0PA7lrVb/NopGntPF44i/lssxQyeNVorm4sR
         Qj7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=J8zePcT6kVhd2S+KpyLdSUY9xhHjGMdFsrsE7ScZk2Q=;
        b=I8Q2EsGVux7Ip+ZdnDeObvI+fD6LLxCce3MXFZO0RYi7S2lNTAvRwrGFXg2kMpZh2s
         hy2QTYnFRdQ2Hn+vpYcfQrb+g3QrfPDZ8ZIKZHktO4PcX755XSDkxDEkmjSptymP0Z3T
         sNane31VmYNWo1VfWTIcSW2ahLpsVZbrr1+2yhutB9bS51kn68w0+pSX9yPpzeYHNFTM
         RMSv4lDLDgZe3h2FqhaG82ZncLxFzlBmpWmAa8fQ82iT/l8AXXMUkwMCX7DTqos70PVv
         g/imL5rtoCwv0sUguBRyXr3GdxrZq1oWD2B6Zloj9egk7C/bRZJsVui8i3pLoj/CCaXM
         nzhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="gXWH1a/r";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id o9si274066pfp.0.2019.12.03.10.39.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Dec 2019 10:39:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id k20so2035832pls.3
        for <clang-built-linux@googlegroups.com>; Tue, 03 Dec 2019 10:39:10 -0800 (PST)
X-Received: by 2002:a17:902:8ec8:: with SMTP id x8mr6030271plo.119.1575398349334;
 Tue, 03 Dec 2019 10:39:09 -0800 (PST)
MIME-Version: 1.0
References: <201912031301.6rtmZKIk%lkp@intel.com>
In-Reply-To: <201912031301.6rtmZKIk%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Dec 2019 10:38:58 -0800
Message-ID: <CAKwvOd=oGyh+ocLbioANAh3sCA33_i7HCcma-k-_oxk4-fpWoA@mail.gmail.com>
Subject: Re: [masahiroy:kbuild 34/59] find: 'usr/include': No such file or directory
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: kbuild@lists.01.org, kbuild test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="gXWH1a/r";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f
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

+ Masahiro

On Mon, Dec 2, 2019 at 9:38 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> TO: Masahiro Yamada <yamada.masahiro@socionext.com>
>
> Hi Masahiro,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git kbuild
> head:   d21b7e6b985c15ff75e8668b0282ec5104391901
> commit: fcbb8461fd2376ba3782b5b8bd440c929b8e4980 [34/59] kbuild: remove header compile test
> config: powerpc-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 7999cd41d16d841d66c9c91b56bddaf209c54955)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout fcbb8461fd2376ba3782b5b8bd440c929b8e4980
>         # save the attached .config to linux build tree
>         make.cross ARCH=powerpc
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> find: 'usr/include': No such file or directory
>    9 real  5 user  3 sys  94.09% cpu    make distclean
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201912031301.6rtmZKIk%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DoGyh%2BocLbioANAh3sCA33_i7HCcma-k-_oxk4-fpWoA%40mail.gmail.com.
