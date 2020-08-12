Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3PG2H4QKGQES3UTBGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C18243130
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 00:55:43 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id a12sf2692237ioo.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 15:55:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597272942; cv=pass;
        d=google.com; s=arc-20160816;
        b=VANWkIMf/QwgpdHYM4UE4SHAyO0h/H++hZMtKtD5aLBpwyenpSSYCVo7o8rQk+ALdl
         AUi9e5vMYpg5aschgq1TI2jhuLLRZC+PyM6vDh6SA6AB6hVOFNvx1DaS5EMls5kc4TuN
         JwxvImDyi23tv0ihiYMvLZtZbpwJzEOcrf4mU3iZ94D7WVJtML1R3cPwGf5yo3tnQFwc
         L2Em44PCJU/3nNeoubYNGWAwtf1Rl4l63dkLW4S+l9A/J+9LHVgLmzqfH73gQhOfwZ7G
         MzmxB6X1JXF4oToYSWeQd6Qhj+epoB5jhLWG4ErTfx7uWTfg6iMTezfgCNXZGw3+7YR4
         lkjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3mRviukoM4TV/ZnRV8wiu7C8emPmYNjClAyZaojhTZc=;
        b=mbrH6bxWQSHP1loJKHAvvhhaN9OeFpVw+ZmFWbrFMd7PLyDqF4/U1wgrItBYShwoCS
         SnNgSg/Pfnyd7zf6prDNQ1qsSXW0SXP8HqrDKKk+N/uL6gNpkKk+JTvBCE6QB2CXhpOG
         eVxCGMj5CsCCCY+6Ap+edYLnc/AGwp1eaEHPZSt762IeO8BlTn195YcEcJDAqdTuBVQy
         6aTp0n+lrq4vPciVTJ0pQ6/t/lsAryzYQzVDa3StmbNalcZcCGv5qBIgLKrmg3Dv+ExQ
         kulRJ4+r5IpfJeVt/rOJ++UjNw31bboWLunD+H3/NnGbh2/6p9zRvOPMpGTU2ZnAPQwl
         rpGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A+0wAnnZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3mRviukoM4TV/ZnRV8wiu7C8emPmYNjClAyZaojhTZc=;
        b=dihIT+xn1PXp/zscNUBe6n24sRpos2RuCebBqi7cvJmVZI8ZQtAG0TAPg34y9c6+tc
         Cmds6TSHTk0/QvPS34JJ4StlvqN2n8t2rD2OMhx+XQLe9x/HkjJzRcVcqm/M+BLUM+BV
         DSXEo4TY/FkEs5RXvSUfS9t0ueLLWBhVFSn4MydqoGXN5YYTrchnB/ixjizB2lfNZ4FN
         q3H8wuJEEgNlwzBGDpCb0j04P7SojJiKrBg4n1fx2gJmZ4MThr5S4TaagoJfOgg8jcaf
         2iuS4ZvQp3RCcLdBoA+bWNAXpi6IPA/CFEZnUWl78jb8eeGXY5pbNwOk+GXvPAhQvOgo
         WH9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3mRviukoM4TV/ZnRV8wiu7C8emPmYNjClAyZaojhTZc=;
        b=ghkqZmW84Pnj3sbR0Tmop/buHWzESeCFXJNXS6ZTeLTqjzTM4b1C0jR6pgKQKiV7X6
         f2SiGL1qnaV5ZeG3CgJgziFwRw2uH00RwuxiImwGlcwgq3ggPnh/+uyJbiSTWtM5PDIF
         0yJ4RzGhRX6NLcgo2W+2EU+VA8PpQkBzSDIzpEqjs/8J7+8/PFS8jaunU/ei+OVxa/Bc
         BWvPG1So0HhVLn4jomhQ54Ch9Oesu68/XYGFfoC6I3Zpo+y9LYfznsU/+bJ8OsfskMm8
         GFcqYE1EkJqmPi5jSPIx3YyJ3A2Jvmc12/PMb+TNB+RtGH0xdXW1idJRKZDHvvFO6GmS
         7PYQ==
X-Gm-Message-State: AOAM532X4OJ+flRTjq3cdytFa720dPuo/inSmNT5xZX8Fn1XJGo5w6NE
	NXio0qS8ONL/7DRFesf5j7g=
X-Google-Smtp-Source: ABdhPJwawHYnqRuUAofZ2UXliUqMDgyRx89cGrDsl4+7+cb3XJNqbjqeW7rICojp5GZ5heHqaadIOw==
X-Received: by 2002:a6b:8d03:: with SMTP id p3mr2035452iod.114.1597272942102;
        Wed, 12 Aug 2020 15:55:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:a1d2:: with SMTP id b79ls938954ill.0.gmail; Wed, 12 Aug
 2020 15:55:41 -0700 (PDT)
X-Received: by 2002:a92:5843:: with SMTP id m64mr1951323ilb.256.1597272941705;
        Wed, 12 Aug 2020 15:55:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597272941; cv=none;
        d=google.com; s=arc-20160816;
        b=U762YghALHRPaj9SLfQiLoTU3sNrnkB/jtpgE37JP4mGuudhGvWbbGRw6Sd510DDqw
         xxoxM28QfF76e5mjQs2SyMpoYBqAqE2j3TpT+sd2vmcKPgd6g7Hnsz5QnF7RCXiaveOf
         NmllWCfDBpyddAfPbRxyyICbna2ItqkmHb5pTlepTbJ5JOFDU4vG/X1BaL9JIafsRT6z
         WgFryYNQaIgL6WDADP4fDG/hco9ALbeqk/Br5p7f7keXsZu0N72zzxAaUP5cwDHMDSGL
         MoNZatZmGUcNY7N61sHPw8gvGcfx42dypkZopmbXYikC57YlZhQInJ/0BapRuPwUi/fT
         wacA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d/KpAP02Xa1uBqBuQDwinbHXESDgjtCwQvrKW1vEk3M=;
        b=m09iXQ4ITuLL7PbShQpmPq6PyAjSnj6zUoVk9VwSD0a0CeZ/SiNFcuNk1Znrvln6iA
         hJ8vjM7iJaccvhd8EZHa7M8bQFIiea+zB7AMLrNdpnxOZhoucgIUHOT4gv/+/U4Hgjdf
         vjCT5EYdA/HVpGi6IpOHfmzZi2gUpiTnOCa9C/5mIVlOCZGndMj5OrRp0bXoI8sHdNGn
         TZc8sBd+3yKLJiUvdze/sKIFVEL2mOeIdpID+Kc1aDXcqBWUpKPeoT1FCMwm4HE1aiLQ
         Ko0CfILF+JzK0qBt48wXFRCdIH62BRL8jJ4C5kHuOUSTl9igy0AUk03aXZh58X5bMPVS
         k1Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A+0wAnnZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id c87si191732ilg.5.2020.08.12.15.55.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Aug 2020 15:55:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id c6so1858854pje.1
        for <clang-built-linux@googlegroups.com>; Wed, 12 Aug 2020 15:55:41 -0700 (PDT)
X-Received: by 2002:a17:90a:fc98:: with SMTP id ci24mr2301691pjb.101.1597272940960;
 Wed, 12 Aug 2020 15:55:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200812173958.2307251-1-masahiroy@kernel.org>
 <CAJkfWY6vhW9kNK-t+2vZQ7Rhn3HedykvT2du7AfO0_9oUAXvjw@mail.gmail.com> <CAKwvOdm3VTZ2QXXxf9pjM6n87UE=Lc-9Cx=V70sNsYGmHCb-hA@mail.gmail.com>
In-Reply-To: <CAKwvOdm3VTZ2QXXxf9pjM6n87UE=Lc-9Cx=V70sNsYGmHCb-hA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 Aug 2020 15:55:30 -0700
Message-ID: <CAKwvOd=xpCnupJN+y-CVmsYMK7UpXT4xQDd-XgJNCmgQFpRKDg@mail.gmail.com>
Subject: Re: [PATCH 0/3] kbuild: clang-tidy
To: Nathan Huckleberry <nhuck@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"David S. Miller" <davem@davemloft.net>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Rob Herring <robh@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=A+0wAnnZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Wed, Aug 12, 2020 at 3:52 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> I wasn't able to reproduce Masahiro's reported failure, but seeing as
> he has `GEN` for compile_commands.json and I have `CHK`, I wonder if

Nevermind, I misread the output from the build.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DxpCnupJN%2By-CVmsYMK7UpXT4xQDd-XgJNCmgQFpRKDg%40mail.gmail.com.
