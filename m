Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQHR2GAAMGQELY4C7NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A874308EF4
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:06:09 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id t15sf7919626ioi.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 13:06:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611954368; cv=pass;
        d=google.com; s=arc-20160816;
        b=ouJz6+TuQ075JK2YfTH/VbEGNXkTg3GZKT7B5J6YslVap1YwVJNnyalVIaRUxOu7z6
         RTd3G+lVqTT8FxUFjj4ecCgqbwbDBDnA5D5Di+vZ2qYbvbWZIqhGD0GBW5yrIIBtU6e1
         PQZCVwX4kzA1lYL6ymDc91Z9a6k5NlDy4SFZRbCr4PmZ6chC4t9az2OD/F2C/e4KSOgP
         idFsigMQrJtLKO+EL4eXwSWQsUXrRGDtkXhpNA2Z7ByAQpug471RmFPBFpyusvhJZkdo
         LZBabcgWwArgrrvZ6I1QiG+bupDlqMh9MbLU8HvAM9wJxmZNVV521V0XuwnJc8bCboX+
         0fKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=BPOpULctVGTqn5wtrbMGYwqBc8+PtF93UXrtTnzzD7U=;
        b=voKdjkXqbdKygTdXfVGr6dMWuy+rqQsvkCS910hTLkmYvBh6FBqNiDnrC5THCCSKeQ
         i4BImiwd98/ieslBVtwvKsjoWpoAje+Luk1M6qp3aqmhDEWx9kQV4mTwAcfKv0gNR2G/
         wv9hMpfZHpRDfc3DRLxcsxZ7TfjyGz3Fp5fXr2CKl5i+qfG+Aw+os4Rqp5nooSBdxyQq
         agtj4/w+Lgh9ZZkFuN/iKc9Jdzzwjp4SK/xjt8Ui83hw7cLQsVPSSOgFo3hqg9t4OysE
         aISE0o3RdAqv9QllGwGC9u9bxcRfOeT7ogNP+kiZlbU3UoSZrQn2VnDtefeEDtWoSyOi
         RLeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="OB/msvX2";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BPOpULctVGTqn5wtrbMGYwqBc8+PtF93UXrtTnzzD7U=;
        b=RF7ZT9ZfFTGGtnjLFD51iaxF9EVxd76fMIaEDL6Utuhm2DK4WsQDIOY//HueHv0R0s
         PVyTfGssaXK7caB2hOcKCLXnpfteiK36btha76dyhrXM+t/OVIY9fKj8vkRpOoz41bUw
         v03rFFhQBno1UsxhckN43AogsZY8p99CeErStqXQV7XLe/cUTF56vccaLHVSzoxcc8pb
         X9ksJnE99u01xfrLO7Hc0ysUHO/xEYEL3gZdHuUpTDq59ZOLIHd8RBslglbtGTKpIg7l
         Cf+mX76RWMGOXO/Nz15hP+GRi1pXXwz6rv7i2SnkyS73dhImjceOT31Znsu72n+ts11b
         OVvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BPOpULctVGTqn5wtrbMGYwqBc8+PtF93UXrtTnzzD7U=;
        b=gXmAz8/+uWXzvvkcjOZwfPe9F5uZfPQ1GwkE9N8n8A0M17+b3lHv0BGx/rjeMhN5As
         wtUMrCVbFL4b7Rmbh+vmfCNNp7lvJ8iXKEmXuYyBSItR7mAsrB8OjL91CTOw64MY0+mf
         NxLosaS+u/1r4xCK02bc6fjxu9PDdR1DR/nQ/3iD3smw2gtEruNtaDzgsU+DkY40Ur1w
         NjMMdQfRUcvuW2mL7IKTDJEumM9ZQM4hW8lYygMQgRdCnxgQR7ibE3PW3DojBrVRz8X1
         M73bIm4QFkvkL8vRUkd0H4ONAgYS2libEmUWj2nUJN2gufDwpA7TZJEeXspboh6p9ujZ
         fdzA==
X-Gm-Message-State: AOAM532qrpB5Tk3WlxVEHxb14bCXVvGzUDRU7OUuf7+ENMwkFJTscecX
	FhJYE8Z6vjgXJ6+BKwJyQ0I=
X-Google-Smtp-Source: ABdhPJwkAcpwZYOCERmbFmla1cOtmIiHdV12aYEbvxxGOjH/+sSHHML+gNO0VhIdiKZwWltGZ02x4Q==
X-Received: by 2002:a6b:dc17:: with SMTP id s23mr4887427ioc.170.1611954368349;
        Fri, 29 Jan 2021 13:06:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:d81:: with SMTP id l1ls1264978jaj.2.gmail; Fri, 29
 Jan 2021 13:06:07 -0800 (PST)
X-Received: by 2002:a05:6638:248:: with SMTP id w8mr6255766jaq.51.1611954367888;
        Fri, 29 Jan 2021 13:06:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611954367; cv=none;
        d=google.com; s=arc-20160816;
        b=dL3BaxRYzOsQUn8MQv0yZBKFluSiTxJ2WOHcZPso7m1rM9WeDNE9XiQOXdPAUr4b6w
         N1XTa+SqtQjFObwNmKBffkvVicQhkNWd5TDYNUN7lRFi0OZZg61l0LWDXb4aakPj3mJp
         IxEcw3FIqOaE2ZuE4SRSRoxyd2/2j+WUlphfEZO7zC6ho437I4Cvw6ZnNj484FlfdYbb
         qrmH+s8JLzLkPT/sAel7lErVOZPKJUZX/feFTFdcIIHliR/3ZwxOd1vQ7g/kAyu8pF/H
         2dr6jlreHJjah7QqRtUOoKnxGuAeb31dlmSBsEgWDT875wfctzXVpCWtStgtGEVBetHd
         zryQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tnOtPGCrnLbOPAzZu8d1fRX/n06p6RDZZdjSy9Y6a3A=;
        b=nB5hBrml0lUneKveC3vwPJO3N0v5aTs4xOdxifsCPgU9z5pOi9frXm4a/lsUaPKVul
         46Hhr1QbyRb1gP4x09S2lcHhEMKQNbHw/pSNPC1CnbGqk3GstxNJoeKTMC3pEPJks9Qi
         SEAk1TzipWMaam0E6+T+mQCI7vwioSO7eNDQjsOCiamX/+LzSZb/USs739Fq3hVke79l
         QohoIEKWp2d26B8qQ6wMFoxdfmm+PSmC2G975615ZPu6sKtzkSOq460lqFbmo6AMokBD
         XyPHBNBZ+5YMcth01O7uAtEjVe/jq1In3LbCZx4yP8sGSalxJUDZLwluuSpLY7ud0JDQ
         eDTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="OB/msvX2";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id o7si174344ilt.4.2021.01.29.13.06.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 13:06:07 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id w18so6990305pfu.9
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 13:06:07 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr6189245pfy.15.1611954367137; Fri, 29
 Jan 2021 13:06:07 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com> <20210129205702.GS4020736@tucnak>
In-Reply-To: <20210129205702.GS4020736@tucnak>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 13:05:56 -0800
Message-ID: <CAKwvOdmuSaf28dOdP8Yo6+RyiviMNKcq8JY=-qgbwjbPVwHmLw@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Jakub Jelinek <jakub@redhat.com>, Nick Clifton <nickc@redhat.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Yonghong Song <yhs@fb.com>, 
	Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="OB/msvX2";       spf=pass
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

On Fri, Jan 29, 2021 at 12:57 PM Jakub Jelinek <jakub@redhat.com> wrote:
>
> On Fri, Jan 29, 2021 at 12:48:11PM -0800, Nick Desaulniers wrote:
> > > Should this be...?
> > >
> > > KBUILD_AFLAGS += -Wa,-gdwarf-5
> >
> > No; under the set of conditions Clang is compiling .c to .S with DWARF
> > v5 assembler directives. GAS will choke unless told -gdwarf-5 via
> > -Wa,-gdwarf-5 for .c source files, hence it is a C flag, not an A
>
> Wasn't that fixed in GAS?
> https://sourceware.org/bugzilla/show_bug.cgi?id=27195

```
diff --git a/Makefile b/Makefile
index bed8b3b180b8..de616e584706 100644
--- a/Makefile
+++ b/Makefile
@@ -835,17 +835,6 @@ dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
 dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
 DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)

-# If using clang without the integrated assembler, we need to explicitly tell
-# GAS that we will be feeding it DWARF v5 assembler directives. Kconfig should
-# detect whether the version of GAS supports DWARF v5.
-ifdef CONFIG_CC_IS_CLANG
-ifneq ($(LLVM_IAS),1)
-ifeq ($(dwarf-version-y),5)
-DEBUG_CFLAGS   += -Wa,-gdwarf-5
-endif
-endif
-endif
-
 ifdef CONFIG_DEBUG_INFO_REDUCED
 DEBUG_CFLAGS   += $(call cc-option, -femit-struct-debug-baseonly) \
                   $(call cc-option,-fno-var-tracking)
```

$ make LLVM=1 -j72 defconfig
$ ./scripts/config -e DEBUG_INFO -e DEBUG_INFO_DWARF5
$ make LLVM=1 -j72
...
/tmp/init-d50d89.s: Assembler messages:
/tmp/init-d50d89.s:10: Error: file number less than one
/tmp/init-d50d89.s:11: Error: junk at end of line, first unrecognized
character is `m'

which is https://sourceware.org/bugzilla/show_bug.cgi?id=25611.

$ as --version | head -n1
GNU assembler (GNU Binutils for Debian) 2.35.1

Maybe GAS should not need to be told -gdwarf-5 to parse these?  Then
we would not need to pass -Wa,-gdwarf-5 via clang with
-no-integrated-as.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmuSaf28dOdP8Yo6%2BRyiviMNKcq8JY%3D-qgbwjbPVwHmLw%40mail.gmail.com.
