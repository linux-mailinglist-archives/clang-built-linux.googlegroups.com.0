Return-Path: <clang-built-linux+bncBC2ORX645YPRBQHEQ7XAKGQERDDBXLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEE1F0900
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 23:05:53 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id u8sf3588346uao.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 14:05:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572991552; cv=pass;
        d=google.com; s=arc-20160816;
        b=dSXjhg2vo0RZ8MRwfG6EWpmg4MoqWKnOslnuSV1xWjRPB59LJn/82MxOTgCP4WbM/h
         C5bvdjHD76cRkMfiDg9c4B585/Q+HYOB7YegLEqKCWOMAcE+fsNXjRujXyU3/pmwGmOp
         ohTYZFrtOPRrwNTN38KycgxYtAJm1gkEWi+HfUQTLKUBu+eAbgakoSz1PA5n+GFgBssQ
         bA7i2tigQaS5pZMvjx/Jq6mp2agXs6feMbRlv8dENCmN72Zu6g0K4ozmChyvKOcdQDtx
         tvlil/Z6B7XWmEfz0dpMxZVZtj5MpyCcYgm/QxUR1aL7vJV9LiRpg81mLpsh3507C59O
         JChA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KTQ/B5wah8s2p6y/a0NFTLTs+blOsYHOMnVkW9Fbgrk=;
        b=nyXGV8aPkVR7Nz6EKd5npGsTIv/LMp7zUGGgz565N6wKsvk+B59Meb7+Riqbu+QZGx
         6xsx3y0Ee/YsJ5eTMhZ+j/6ReIyU8ucU75WExTi3lQ8nm2w12nN6g45z4P4WiAxUjuKI
         CU0+cJsdOPPjr/ua/mipZxnu0zSfoNACa268FGexyFbQ+t9qKhD5fahUozupFjE8ABDQ
         yMd4F34f/kyMIH0ScjDilZ7NcLota6G0liUUVx1pOnYRrPx+WckjU/rSZ/OaIJAfzfZj
         Po8w8h1InoU1Z20Ufl8PGiFapa/A+UCwij83nmmDFbkF/RLgAAAaTmHlq8DpGeqBpDmL
         Vi7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=khVLBRWV;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KTQ/B5wah8s2p6y/a0NFTLTs+blOsYHOMnVkW9Fbgrk=;
        b=aYzs2vOXNVtrQO62H95FKgUk6ex7L+vV82BNwkox0uJB7nP0vs48ryHqRGBMs1qCHu
         btEdyAmkQ/7u4ZF/GGk8jTD/rRFhyQfWgRrovwXODaZTx2jpYte9Hbfq8LVoYhN76iHH
         A/5TyINt9VkIjxBe0xuxlFSeBTB0JQZc1XyYnytYVPzi/co+LyRGiqVqpp2c3OT1CN0F
         QC+zswlYpfTUODqQKaUgECGKOD4q7zTCWNdWeP0y9e8wwgfdHwOj1DsHtMRnbJDrf0mc
         VwQ0iO6ifqXAyYzymT1x8NdodlPxDAHQJ+D57nUoa4Rpzwj+8zrsb1ngl3kazfmAF0WW
         d19w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KTQ/B5wah8s2p6y/a0NFTLTs+blOsYHOMnVkW9Fbgrk=;
        b=oeoWYITxNUD7XBD8mriVyf6KVrJ1icFFcCtXR/S7Ftu94Fq42/OimHNFCX4BptKTjL
         dLhVXRGcuXgGSz2ba2ACeQvZMGvPOa+h+kctxGWL9CL1k3tgRdo2iJdK6QUqCUMLqEiF
         ez83sWXodnzabHdPoMgQDVkLfIEofH/JJYcF69AaCm/wzW0/j9Trw/8WcjwyMngOI59j
         56wiUuYjVPa6+G0leX7pZnaV/bgudImnZdp1aQ1Q0k8mM4dbNGZa9oh6VTOp8Qm6lIob
         4r2bsJHJBo+L9RiI9Owf5VK1MbqsFvm6Jc6/76oVyYSdJ2j+nReposso33zj7tQdSMbL
         qVCQ==
X-Gm-Message-State: APjAAAUPn2W86Mrd/g849dZRCHcu7i6SLPo7FeJDujuMJLsfOvMpQIcu
	uq63kHNoV04DOL4PTTnwi8I=
X-Google-Smtp-Source: APXvYqyv+C1mHraS2mc/rjOTpk5PMcvsBOXoaQ2MxDe5r54z96IfnQN2xoEbD1ANgjLFRSD1pthSKQ==
X-Received: by 2002:ab0:5973:: with SMTP id o48mr16265571uad.105.1572991552422;
        Tue, 05 Nov 2019 14:05:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:5d8:: with SMTP id v24ls1498vsf.6.gmail; Tue, 05
 Nov 2019 14:05:52 -0800 (PST)
X-Received: by 2002:a67:a40e:: with SMTP id n14mr17200314vse.230.1572991552005;
        Tue, 05 Nov 2019 14:05:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572991552; cv=none;
        d=google.com; s=arc-20160816;
        b=m7EFoC7MwfLooVfXJ3ZnuX8AZjrgz6eDjFiT7H/u5yKl8thyf0E8oR3d6taInVolCB
         qkyMMJ20rbaLAYEISaF5XM+hQLnnDualVYHuUkGo7tWQ1nHWeNuVbUvFmkdmOHM5NtUd
         i4fFywenoOlYgp2gsvlBKRHysqKRwCUVS/ZHxtjKxy2Cjdr1QP6ywFizileFB/jsqBpx
         nGcp8dTJGNUr5uv0nku1SV9Z7J++EzdJgE0i1dOAiqjVWS3oXK76jBZrrm3brm1wQ62D
         BQFwyAcSmTp5p03BFtTAiajWCIob2HEiwODOHs4arQf5qJyCSATLuuSn6BNgZlaz7Cje
         KbDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BNIM3D66/Azg3YbAGxb2zW1QAG5fW9Q4vvlsSYbe2Go=;
        b=ahCwEQ1AL81APliWbxjFvagDRe4r0HuhDEkccVQdh/uLjyPYfsjHIKm6O71rg0k2Hv
         wmGs7IIiDUw/z6DLM5v/BRupVoQwcOIM9BDagp19/B52wf6anyKwuLix2ISDk7pDkpQX
         jI5enhv2Fh7V05fxM0TfDJsYod2Nut4JkGjbUT8yQuimuJ1RjCK8Z277NITXthHcGjri
         ceFk1Buw91wITbx4bfnSYelTM+7esUeZGLRf0dKgnxVwm6lXEUQ5BOJS2s7z+jinBGuQ
         tjpih9FJK711VBGwZFJyeaUtFL6Gy9PwIY6hLaPZg4C4H4V0PQ06y/61libPz1wldBuZ
         l/fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=khVLBRWV;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id p78si1274002vkf.0.2019.11.05.14.05.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:05:51 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Received: by mail-vs1-xe44.google.com with SMTP id y23so8049550vso.1
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 14:05:51 -0800 (PST)
X-Received: by 2002:a05:6102:36a:: with SMTP id f10mr116554vsa.44.1572991551050;
 Tue, 05 Nov 2019 14:05:51 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com> <20191101221150.116536-12-samitolvanen@google.com>
 <20191104171132.GB2024@lakrids.cambridge.arm.com> <CABCJKufDnLjP9vA-wSW0gSY05Cbr=NOpJ-WCh-bdj2ZNq7VNXw@mail.gmail.com>
 <20191105091301.GB4743@lakrids.cambridge.arm.com>
In-Reply-To: <20191105091301.GB4743@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 Nov 2019 14:05:39 -0800
Message-ID: <CABCJKufpgoqo84GvV42bO-LVPZ4morV=OhscTNwaBpv-RSwXUw@mail.gmail.com>
Subject: Re: [PATCH v4 11/17] arm64: disable function graph tracing with SCS
To: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=khVLBRWV;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44
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

On Tue, Nov 5, 2019 at 11:55 AM Mark Rutland <mark.rutland@arm.com> wrote:
> On Mon, Nov 04, 2019 at 03:44:39PM -0800, Sami Tolvanen wrote:
> > Sure, I'll add a better description in v5. In this case, the return
> > address is modified in the kernel stack, which means the changes are
> > ignored with SCS.
>
> Ok, that makes sense to me. I'd suggest something like:
>
> | The graph tracer hooks returns by modifying frame records on the
> | (regular) stack, but with SCS the return address is taken from the
> | shadow stack, and the value in the frame record has no effect. As we
> | don't currently have a mechanism to determine the corresponding slot
> | on the shadow stack (and to pass this through the ftrace
> | infrastructure), for now let's disable the graph tracer when SCS is
> | enabled.
>
> ... as I suspect with some rework of the trampoline and common ftrace
> code we'd be able to correctly manipulate the shadow stack for this.
> Similarly, if clang gained -fpatchable-funciton-etnry, we'd get that for
> free.

That sounds good to me. Thanks, Mark.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufpgoqo84GvV42bO-LVPZ4morV%3DOhscTNwaBpv-RSwXUw%40mail.gmail.com.
