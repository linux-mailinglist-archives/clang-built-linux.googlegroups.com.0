Return-Path: <clang-built-linux+bncBCS7XUWOUULBBS44WX3AKGQEUSPUGAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 496051E2814
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 19:13:49 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id q1sf11836226oos.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 10:13:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590513227; cv=pass;
        d=google.com; s=arc-20160816;
        b=S9lLSTsiPIaow23lR2l0curbqVDcY7wlunQJhjtIl7oa98zMNPTJcLmXwmREL/QFcb
         Bymw5TX3PU8GCvTeVYhWslcLItJu600iIra+/j3hb0VNvELoFmbkApYo0Yopw6ie3j25
         jGH4By4Jmwh+LhwbXBuIvOq+Sr4Emvjb8dMcPzLM6OQvB38wfqk2LzDcYgmt5lLNoi4I
         7hQY0McM7QGk+qPR/n8AgvfYyPp/TaHmzh1XXoW3TlakSgcadAFbUdopKtU8UVqzT0pl
         5Jx35ZLClkRH19jlMwn2B9Bf5fPr1ZXEcl3Xldta9a0sGjyBO2jUfkd9WVBW6w75NPb4
         BxMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=/6ROL9u7uqhfh9T8blLJCN4OSztxqauCQxO6J5VPjk0=;
        b=RlX97LcxgtIArv641dgEs+IL0PEEKAjnzAUdrybJ+yeL36lIifXkW/KPDiZFEpDVYX
         BmjbBz9bS5rWCCAp881dD4fVezjR470+DyQRrxAIHMXeNqW6tAxJX547KQg+cs9YSODq
         eLEMcuiGWBCARKQIyClb5UARNSAdno3ZKhOBR7oHKbCTSUWmaXe011yKsQvkB8f36alH
         eVm1nLMxlj66c2XVzp3mLVuLquhVXIjIdiys+arvOiBLvDKpgNsF/1PHzkabVflnx0E8
         KCQPGHOQOKCc/p4Ixv2AnLzHHf/svtRSvbrNQBSctHeUlmpmmLtVFssxa9luINATgFbv
         RGBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Oo5M/TaH";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/6ROL9u7uqhfh9T8blLJCN4OSztxqauCQxO6J5VPjk0=;
        b=LuO+mjv1wfShScsmKtTe8PrXc8UAZ/WyXHWfC9THQTTQqYppNwkJtMtAvPZDtppDcI
         1Kd5aoddNIaL9hkPJTlhW6S+j8d5L/yQWUo3XouuaTMEOIyMZNQ/OZFdDRdfIv5to+Jt
         hz92jgLxrhjKAWAHB19dVY6HCQy3cfNa1cNipZBQtaYeAymGv+0K18dGa2FX2VfTm4Im
         dHf7cJ/UOIEsK6gsDogyNqueyQDA+w0ZYncnS0WD68Ji8NEYdHxTjVyDPxPiA2RxT8FV
         ki7hryhAPd9OrLPwWJXPjGChwzycHg5MaFK1M36/z52rq3Ul4kWet4oo96yAgDuAtT2t
         W7mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/6ROL9u7uqhfh9T8blLJCN4OSztxqauCQxO6J5VPjk0=;
        b=pI1uYwaFtTALSDX5G559p7x2BhPDm1K7SbZGcfSYcFQ5h+WLDbeOJNKriWZBecW4HV
         N2R9mW/3/F7deNYcz/FE9SApewUTQptEMZnlzIkFBahz+SgYzJSlqZUs9fWabOIB28Ej
         RJ0+rtauVhPlKn6DTkbZMExMWg6dDSnZW1AXt0LdgQGxRRcWVdPwwLlg9ejES7JEnXHW
         /TLB+atleXMGhnK4oOIZnUlK/4YWdeOxebWTtXXcYwU34/6PsO2UHElUkgYBijsMmfBq
         S9OPI7y2ndGtMI4/K1HpBgEak0An26f988KA5woSbWE32lkay+Wh7NH4kcyo8BSJF6JT
         LyUA==
X-Gm-Message-State: AOAM533sfPoDXDX6/nu20/lgDqEZxxiDnnxp9umH/sf5PNDbXZf6FV/d
	SCh+DpqmN/ItC1y2o5XD+gQ=
X-Google-Smtp-Source: ABdhPJxhs7NGGK4+f9hzHveZmxBvHbhDM3zJtcd0Q7ZDPnJd3zwZAsF+iU2wuHkaSzeSdK+VASlTEA==
X-Received: by 2002:a05:6830:1df6:: with SMTP id b22mr1680800otj.74.1590513227729;
        Tue, 26 May 2020 10:13:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:19af:: with SMTP id k44ls2460164otk.4.gmail; Tue, 26 May
 2020 10:13:47 -0700 (PDT)
X-Received: by 2002:a9d:4702:: with SMTP id a2mr1675970otf.273.1590513227419;
        Tue, 26 May 2020 10:13:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590513227; cv=none;
        d=google.com; s=arc-20160816;
        b=tjHFRKQ08wV8JdsD/4ClecllmWoc4wpSlxEp5SDXgopl8HfBohMVYcehJtGNfux6ZE
         JDpsCzYSKzMEfgx3E1mOiI0XvGdqeL+oQK2HW7Ni0ANodcKG1fOqQsq28nsC8S9GQ+Zq
         nYZ/geOA6mNHnAjxVFqYJTljRN+zy5YiEaYouhzyC3Ae+H4QwhWHHCUi03EEBYxLXnkB
         TxmS/G11KS5iKNXsJwEXKZ5Y9cdIUAeejb3GYtzkTwzcHu2Er2TcFoC8J6wD5if2pjkx
         /AUcX/JxBd9+9OJTqLJQMENxDl3cVXWWpA999d29PqUHEkD5q6Z+HE+RgKuQU5cGTFjb
         hL/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q2tb1AeXDG23hGcjPRVLc3Ey0WPkny9sKX+WHXY3/jE=;
        b=EoQAX96DY6WmsJuSiHV3aoPZsEdX5Bel7yGd9u4FRU9Avj4adDFh1fS30t4+s0UmK2
         9eUX/gI0nKXdeRjdS8XYdm8gij+MKXQ5o2cPCMj6Trm5EwMS+FsCVtX4NtfEETJjHgNS
         s0sCigentLMUQRHnXwiEFDvrhEWPDb/0E7yP75qpSFNQV5uEhTLn9XMGNx7i/7a1wf1X
         y8WjeqYbm+MbQdeCGx5Ql046QAWxu+iT8z1ne9NmKBRVWaoGjrGntM4R8LU71IjCQPiq
         B0w8a/IdbOEG5kquM70JMsYdODTbBKRPBCBy2syb9UQyTnJro5M8GEq4WmUiOSUOnLsi
         bBcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Oo5M/TaH";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id p28si78343ota.3.2020.05.26.10.13.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 10:13:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id t8so58127pju.3
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 10:13:47 -0700 (PDT)
X-Received: by 2002:a17:90a:34cc:: with SMTP id m12mr238695pjf.123.1590513226563;
        Tue, 26 May 2020 10:13:46 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id g7sm55515pjs.48.2020.05.26.10.13.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 10:13:45 -0700 (PDT)
Date: Tue, 26 May 2020 10:13:40 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Ard Biesheuvel <ardb@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 4/4] x86/boot: Check that there are no runtime
 relocations
Message-ID: <20200526171340.pdbautbix5ygdvgp@google.com>
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-5-nivedita@alum.mit.edu>
 <CAMj1kXHc4o91VkaChoyVzr4w-HOaashMPtkCKLaszMGCxhR_2A@mail.gmail.com>
 <20200526151623.GB2190602@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200526151623.GB2190602@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Oo5M/TaH";       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2020-05-26, Arvind Sankar wrote:
>On Tue, May 26, 2020 at 08:11:56AM +0200, Ard Biesheuvel wrote:
>> On Tue, 26 May 2020 at 00:59, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>> >  # Compressed kernel should be built as PIE since it may be loaded at any
>> >  # address by the bootloader.
>> > -KBUILD_LDFLAGS += $(call ld-option, -pie) $(call ld-option, --no-dynamic-linker)
>> > +KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
>>
>> Do we still need -pie linking with these changes applied?
>>
>
>I think it's currently not strictly necessary -- eg the 64bit kernel
>doesn't get linked as pie right now with LLD or old binutils. However,
>it is safer to do so to ensure that the result remains PIC with future
>versions of the linker. There are linker optimizations that can convert
>certain PIC instructions when PIE is disabled. While I think they
>currently all focus on eliminating indirection through the GOT (and thus
>wouldn't be applicable any more),

There are 3 forms described by x86-64 psABI B.2 Optimize GOTPCRELX Relocations

(1) movq foo@GOTPCREL(%rip), %reg -> leaq foo(%rip), %reg
(2) call *foo@GOTPCREL(%rip) -> nop; call foo
(3) jmp *foo@GOTPCREL(%rip) -> jmp foo; nop

ld.bfd and gold perform (1) even for R_X86_64_GOTPCREL. LLD requires R_X86_64_[REX_]GOTPCRELX

>it's easy to imagine that they could
>get extended to, for eg, convert
>	leaq	foo(%rip), %rax
>to
>	movl	$foo, %eax
>with some nop padding, etc.

Not with NOP padding, but probably with instruction prefixes. It is
unclear the rewriting will be beneficial. Rewriting instructions definitely requires a
dedicated relocation type like R_X86_64_[REX_]GOTPCRELX.

>Also, the relocation check that's being added here would only work with
>PIE linking.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526171340.pdbautbix5ygdvgp%40google.com.
