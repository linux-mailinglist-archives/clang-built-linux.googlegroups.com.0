Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3VY3H3QKGQEO5GTANY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5695B20BA60
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 22:37:04 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id m11sf6935618pfh.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 13:37:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593203823; cv=pass;
        d=google.com; s=arc-20160816;
        b=dYYnEOazwXsvGiGIsao1LHPmtkTOsrNUHxfv7/LGCn1CdkW0P0Up7F0nf5bLemaB/M
         mL5TcaLqjrpdORHbAxMNT2WfJfVXXQwkYbh4XSyVFGnSbTrwE8hX/r8arYA1mAJn3hmt
         Wi01Kt2SWYDTNI26NnIEfiYqq2X67jUKXNlx819frANkOIDVE1CQd1p8B9wr+NFnYaZy
         qAxwYqVlWCStqdo1p/r7auVUtcuF+01mOtQESstMNgYhnZNwlmg7RjFtMaVpMF6Ct6kz
         wnsu3zxPNvcFAA7BYC+wcjpG3j2vQLBE74fkMjYzK5P0Z6ybjpZWZHbIxuCjtTeTirFI
         ZRgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ptrJXPmxvbqoB0JhhbeZcoc5Fvytmu9qDU7qDhfVCRY=;
        b=tjyQVQaPYYzsYtD0f4Q31nm5wQu3kNcbx2dC4XL9IV++IiD2PnOaPWd1NvHdgAuIcV
         tfjqz9jATKdmVa8rzR0nol6p1zwSraNAgYLrt2lKj2DV/R58k34UIIigwmE8HBxhoKwE
         E4sqyVJNSDK/IH1Fnl1AwXCv351PaJDWE0viHX0zUQls9JyKOgqk9zusqUVIW32/U1Yl
         K1UGAz4mj2GUULW5Bpqb8O4jx2mnI7IgL8jWMctbUyn7esBx2jX6zSXy00WqBhCbQN9T
         Ca/ZeNGra8SAsqN8TLOWTImLI/3UH+5Nm7y63eM2yP3yUoMpuo4ITx7cGNueTqMVakyv
         e/Fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LasIkQVy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ptrJXPmxvbqoB0JhhbeZcoc5Fvytmu9qDU7qDhfVCRY=;
        b=cdvIkgYuEzbjXDwLAlXaOaa2KsbZ/O5fnMsPHDmUp16959eiYsAXQAxtZaCLGoAIc6
         PNMs1bLmDP2iwsekCx5niUklyxQ+HMmkOfuTD7hPT+oa/QoQUjfA8Bkj18YA0jC9Amyp
         mphAaRd+LY72kLifSATEFHOAcWGD4JW5+8Dso6GNwR6+eCbPgETk0NGcls92bdMgBP/t
         PoZ/qPL7CB3hD+ZJjdEoSPMsTS68/BkC1tEA5U+YbtrKpr+ClkWBkZGIErHuPCV0Ntme
         64tUlvXG15NSDKM2WjEJerZbkIGJUQr1cBg6SLy2ya6teqx3CTfGHZ0P3XSY3vIdlubZ
         HjtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ptrJXPmxvbqoB0JhhbeZcoc5Fvytmu9qDU7qDhfVCRY=;
        b=flvYuEeU7OFsbbIKFCEvI9oaFde2GSXdIQZHNJ5/lDwudUXIdzuezRQoK4NCrNjO9V
         zDQIWq/wyMoLoWLHPUWAo011HdWtqi5h1L15pRoT44jY1feJYpOIqQtg1g3sNIUb232O
         yheDhndQuZVn5BHVNQibW66jo0GQJcgtLo398fjss3kqYtVZzg4+N9svUKQSsRK40BFV
         JTVoYN+wT9XT+FVEwX88FoxxVMYmP4xSh49jVTJtjiqzLvYTaz7pfWUikA4N4nndOr1g
         l9MotT8tlgZ9lScxTkpUX6lmd5bEhimDSIxfGb8w7ficG2Oh2wphDGqEjj+o1IXlriir
         D/6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NsFxSL4pQa/wmY6JYizZHCrvjxOwu3F0hvZSYoBBkRb+8GR30
	2NJxaJupwDLwFSTiDY02Epk=
X-Google-Smtp-Source: ABdhPJzUy5PWMBn37H1gcY3lVe71M+IlBn8aQaAnEZzFVlzB2/0jo0HzCpNEAPCMr6SjOj9XucpaTg==
X-Received: by 2002:a62:1a87:: with SMTP id a129mr4342933pfa.95.1593203823038;
        Fri, 26 Jun 2020 13:37:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7f94:: with SMTP id a142ls3290393pfd.2.gmail; Fri, 26
 Jun 2020 13:37:02 -0700 (PDT)
X-Received: by 2002:a63:4144:: with SMTP id o65mr499752pga.8.1593203822675;
        Fri, 26 Jun 2020 13:37:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593203822; cv=none;
        d=google.com; s=arc-20160816;
        b=qMOiTGERuzi5F2i/uk7J2vHz+b4YPAT4G09VFmQYNByJ9fyNwNfzN78jtTEzn71ml8
         fnHUlNi+OUiRjKpYzbRqcvlIVrhah+2IxSf1eM0L0x+6w3eWo60LXEgl18i3WAVYAkDJ
         1AFmfWFPjsGbayWe0RE5WA3SvDzgv2vB13WfNtel+aJSy7Pjuuy+JMiejTw4ipy/VWa+
         W50iH30sb/xdZ/Mbm9jhpto7xOSZqbWZQvt3kxF4OJiQ2MVM95a2SaGvkAuxxpWCs+Pr
         LAxzyzQdcdHZ9T5T7JaF1b2KmXptQAN2jm5jFFGnE3Dyr8F+js7RS5CBQTTTekzryG1n
         mu6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nt/218p7v20WGusEjZTRWNofL1UTU7wXJpxnIwWbqck=;
        b=l9ZTDoWd2/6z8/En4tjyvLnPhBgFxMxxzjiydDNH945yW6J+kbGNHlwHQc5KjDtH7R
         nhf7i/Uiz2ar81UVnfYDY1PReC7CMvM/3micwDgEgYWDd2KHdcsPzxSJQ74b+nA2UA7o
         ZZNfM28y+cUjF1gBmE0/+HgiMP+n8XU/k0GFuoBjSfPN/yHW2u29PL2v4j5VReRIOnnV
         +1IBiRdvWbWi9LydkmYbdZH9OkyujWL+aFYe5ujN4E2ORPBiCeVMwU5RqEHCpxkTTkIy
         Qwm9xE3mmYcFw3SV3k1WbAqb3WAEbl9LCX5d9vmNFBdMpWxJZKXAU7HyfTuMJ78u7Ocz
         da4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LasIkQVy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id q36si588288pjc.3.2020.06.26.13.37.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 13:37:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id u9so1065374pls.13
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jun 2020 13:37:02 -0700 (PDT)
X-Received: by 2002:a17:902:7896:: with SMTP id q22mr3972740pll.338.1593203822398;
        Fri, 26 Jun 2020 13:37:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r8sm27166377pfq.16.2020.06.26.13.37.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2020 13:37:01 -0700 (PDT)
Date: Fri, 26 Jun 2020 13:37:00 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] kbuild: remove cc-option test of -fno-stack-protector
Message-ID: <202006261331.3A94DB7@keescook>
References: <20200626185913.92890-1-masahiroy@kernel.org>
 <CAKwvOd=V_M43CP7G87K3TqSsxua2NcXPz6BnDt-z6167O2WAzQ@mail.gmail.com>
 <202006261319.F130204@keescook>
 <CAKwvOdmFpgSGow3X4AhEC1B-xWNORTgAFBXgYPQHLGyhgefddw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmFpgSGow3X4AhEC1B-xWNORTgAFBXgYPQHLGyhgefddw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LasIkQVy;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Jun 26, 2020 at 01:25:27PM -0700, Nick Desaulniers wrote:
> Ah, right. Thanks for pointing that out.  I'm still curious if the
> CFLAGS_<file>.o rules get appended or overwrite all flags for that
> translation unit?

CFLAGS_file.o gets appended to the CFLAGS. For example, after my updated
patch[1], the command line for syscall_64.o looks like this:

gcc -Wp,-MMD,arch/x86/entry/.syscall_64.o.d  -nostdinc -isystem \
...
-Wframe-larger-than=2048 -fstack-protector-strong \
...
-fno-stack-protector -Wno-override-init \
-DKBUILD_MODFILE='"arch/x86/entry/syscall_64"' \
-DKBUILD_BASENAME='"syscall_64"' \
-DKBUILD_MODNAME='"syscall_64"' \
-c -o arch/x86/entry/syscall_64.o \
arch/x86/entry/syscall_64.c

-Kees

[1] https://lore.kernel.org/lkml/202006261333.585319CA6B@keescook/

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006261331.3A94DB7%40keescook.
