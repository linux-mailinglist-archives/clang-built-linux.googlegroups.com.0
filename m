Return-Path: <clang-built-linux+bncBC2ORX645YPRB4GFZDWQKGQEKZY5N2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA0BE3EE3
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:17:22 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id r5sf137507iop.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:17:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571955441; cv=pass;
        d=google.com; s=arc-20160816;
        b=0nS4u9S/FGUDU4mekZrsbo20Eu+XwzJqA1YfCD1mkg6rSbZNnRUM2olNcTgsr742tC
         KnXbH+2TNWknTmHzpAXVdnORBgDvUVESALkR/Yv3Ymhb3La4i9FhnJ97ID4hDHuyI3vl
         gDcgi9jWcrGEFli9MTiV0DAde7VslOw3Esk3maoV5FLkhUs6/cMcIjB4PmxTh0CxR7Kq
         VkbFNDI5DNTIopZigPqzSOZ5bRahg8eNNAN2D3aLXDE8VnBNVRNZILqth99qbS3+6bnh
         L+ouCLVhAw1p+Yt6541kYUEQVa2F7h/nVByeImIK/1fy+Z/0tO+S2uk6W/8PR4FJM4yE
         cijA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xEY9IUVxRiYVBdyw4iY+Gos7tgnycHBgKsICi/Wm9sg=;
        b=xv2ZW8o3Ac6TBeYebxwXxu8FSzIfCLgvlvrHVQyZvjCfPWme4iSarZgZRwMl4OemS5
         r/c+j47Wwp+owld2dL2NLPe1dpiQxGdoFo2kh5t1E8z4JZxXfvLDVKrAAryxQNThTN9q
         GFWSSLSfKiTrurV2ziAxvMoVcNbuaOGy6vQLu5jSKJoy3rhO4UN1ZcBrmGjZDAQvEZjy
         e+zIrnOQ89uVTARN63PPbXi+7lrrGliLdUM62EV8R7u1O/PvyRIlNtpspAermf9ETGp1
         rg5OnrJuo7mbT9/VhSFo7JN3ES1Dek84fdZz85i9aezTUtL6DEzmV2YZLAIhqBmKWXkL
         2mvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="u1/fHDmx";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xEY9IUVxRiYVBdyw4iY+Gos7tgnycHBgKsICi/Wm9sg=;
        b=o6olxA82/HyE8SscFvOjzaHFE3aABmJlWpbikbNgXztHVyY7QBaA3erAQ2I64d9pvl
         TRMITfee5KPRaIXAsQ6NTiC2KKj+7GoYX0xj9FNVEqKG8oT6Gk5m79GgZMzvCoeKzpAC
         rxWpRRnKfmgrS64NlnoMmzfaDybjIsaaduc6WTv+h7+ZFodyE7KemVHzcZwn9FdqYSQo
         TmD4Zu9EHKUer9aBYI1YtmBu6KUgI8Q7cAf6D8FkwZm5eFsAsQo2Sdnn/y87v+LLBSTS
         3HX3xaeMy3uHC+DZmhDlwvelsvwzP7BhZRwKpj9K41QEPBM1cMsjD38BN8Ptd6+COcLi
         BcTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xEY9IUVxRiYVBdyw4iY+Gos7tgnycHBgKsICi/Wm9sg=;
        b=sA1nM+a5pMx5Lnu13YkR68WxaGLnSpRn2TNBhv0Rn9X8i9ZXqB/ZOULH2sA3IovaOB
         MctslfLhbG7uSxbKGPKuUsxdWoj4IbB4/WkP+eBmO2z0WlIwA2vErtZYK7DXH/LUw23Z
         +cOE6Z8U5x+MiZrkOuDlZAEaIy0bSjsJiOs7RFTJ21FmjQij31NDa++UPpHBOxmrKUMG
         GM5MSmRCD3w4OTSO9T5+mXBbW8LZitz39qYSfSwCBsZ67Z/nkWbgRMn2Ks9Yf2eBKGbg
         QTbbVzPDd08Mjre+fAS7GvpbtnXIA94Tesq3h4r56bKi0DB1TTWTxMlHQwQMkqZMRZXU
         pO7w==
X-Gm-Message-State: APjAAAVgtIRPUQEoMbqaoKc9G3G3NsFZfVG/pSkKU/WYMBXEtjeh2t9H
	YPDa5S2734JEKNL9XebkGLU=
X-Google-Smtp-Source: APXvYqwDpJrFG/2Ro6Qy/IFeRU/vpJnXRXnFDWQbdsdeTgf485f0ydrt7t4fDQRpvm2xQOSJZZBfLw==
X-Received: by 2002:a92:6a04:: with SMTP id f4mr385777ilc.9.1571955441064;
        Thu, 24 Oct 2019 15:17:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:385a:: with SMTP id f87ls1345752ila.14.gmail; Thu, 24
 Oct 2019 15:17:20 -0700 (PDT)
X-Received: by 2002:a92:c9c5:: with SMTP id k5mr437780ilq.112.1571955440730;
        Thu, 24 Oct 2019 15:17:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571955440; cv=none;
        d=google.com; s=arc-20160816;
        b=Ir69SfPrUqDAh/i3zLuktwWAXRL+J/Pb2SFQXzioFrM7y7f+d9aZ5LwLPX2dOs3heP
         ZNXOy5Sud0CxnX1urTOWWyIpZQuDKDRSEcvUIwbIvsU1aCPibX9MbEG2HIigcSmr4DpW
         VLN5AP5eahzCna8jQJfdK8HC0/kgtXePDiWEPqtVWOJq6Y/fLoTqwgfUk7K2z01vClHY
         EbpRx9sU/5ScvWhUpHVcqD3VzsHkqg7mogbMtw1LXzi8mPWe2NtVYj3XZQ8UEEtOSMjo
         2svRhcvNXgogbZw7Rdit3g8Z8BEbJmaqlJcDsLvFXKNVlTFQoZHomL5FSPkht0JcgnyY
         Et6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qHNXsthwregcyrL2BKVfLqYllW87y6QVnA+Lbr5Rgec=;
        b=PjxGq18b5BavHviYIyLQYjZGuKnJ3SJbrSd+PQrBa3lMwo5bntTZFL58o2/+z2oMvg
         20hX7m1E5MNYhNvMUWrTlDVRLl0X2TOyKjxqPwzw4ep/fDjqvVXHpyBYLUDkcaQSFn3t
         beWiMYs8c5jKXZT933sj/JEk/u7TdISHRHupkoBwEOVlBjdu35/5BZBhs76p+4YsG3FF
         H7zdOKreFgwoF+F4A9QW/X1CmfOc0SuDaqFuzSxSyVmO6Ow2FNpZZLFI0i8NEdcgAFWN
         E8HZCcgOl96acnaGsezEhtZmJKQ2TG2YT32/vGsmhFN1DaPZ0JL0gb0wbFGHnw8alj6P
         jD6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="u1/fHDmx";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id f5si19228iof.4.2019.10.24.15.17.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:17:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id v10so125258vsc.7
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:17:20 -0700 (PDT)
X-Received: by 2002:a05:6102:36a:: with SMTP id f10mr324969vsa.44.1571955439473;
 Thu, 24 Oct 2019 15:17:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com> <20191022162826.GC699@lakrids.cambridge.arm.com>
 <CABCJKudsD6jghk4i8Tp4aJg0d7skt6sU=gQ3JXqW8sjkUuX7vA@mail.gmail.com> <20191024080418.35423b36@gandalf.local.home>
In-Reply-To: <20191024080418.35423b36@gandalf.local.home>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 24 Oct 2019 15:17:08 -0700
Message-ID: <CABCJKueb=xZzXBegc58aWRqPq6eCOpBf7uyyzVyNMujDSHhm1g@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Mark Rutland <mark.rutland@arm.com>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="u1/fHDmx";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Oct 24, 2019 at 5:04 AM Steven Rostedt <rostedt@goodmis.org> wrote:
> You can remove a CFLAGS for a whole directory. lib, kernel/trace and
> others do this. Look at kernel/trace/Makefile, we have:
>
> ORIG_CFLAGS := $(KBUILD_CFLAGS)
> KBUILD_CFLAGS = $(subst $(CC_FLAGS_FTRACE),,$(ORIG_CFLAGS))

That definitely looks less invasive in this case than adding
ccflags-remove-y, since we only really need this for one directory.
I'll use this in v2. Thanks, Steven.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueb%3DxZzXBegc58aWRqPq6eCOpBf7uyyzVyNMujDSHhm1g%40mail.gmail.com.
