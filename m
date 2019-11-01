Return-Path: <clang-built-linux+bncBC2ORX645YPRB65M6LWQKGQEHDX5DCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id DD853EC9A7
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 21:33:00 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id b19sf509083uak.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 13:33:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572640379; cv=pass;
        d=google.com; s=arc-20160816;
        b=b8KlHmQIsXtkP7EHgdzYdpA0lL19kOxw7JoD1Ai2xbeq/ETed/FZ+jrK0L66rMX3kD
         fQUyd2ODYxGeJ0QUfGhK0Je99fF9c++PrXJCdH22wPdXKEUu68iym9qWQQODlInT14dd
         4775+ebjTFB0L1D7LckLiwabouI8yCYwcq9I5pTui5zCjMuLmyFGj0Tk8Fb4YNChAlvh
         7wPIlViXMG5cXntKfWpw+tpK1b8FWboRUwiOZ20DlqTxBioXIZl0qMiuWhyxgugr1RZA
         H6yjk5ryFjzIUHzvrvZiDIkNto5X7sHr2Su8DXi/XJHGOL0QueYx6c9cgcb9mqshfIg3
         COCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Tm4DnbHi8nyJDwFphQMiqHFOOotLAhLwgyWNyA/pqgw=;
        b=VmiZwXyMsSL5aukv8EpDCSRZsTCWulVFpaZrOiAmp7/gkSWXtRUB6h80RtfYgRfaL0
         GvtCNInBR5tVEJ40cwvDaRXnvOhbzNk8p2AVB22MLuR/V/wUuOMjdGk0kgAPIXd8xjMX
         e92dAVdTmqmk6mS+nOnAGEDLQRY+oscGd9m4mfYiNhy3mjoZihcHrzv/eiKmmg/nnLBA
         GDlws/SsA9lThBB5rTahp44pBgFVVDU8rPVSif6iEkDJX6J/MmURUfzHhejcopbhNm6Y
         QmAB0PXU11El6DJC33KHQsE/pcbqaOnBolXZFFNYnRNWZzhgWXHyxPSmEvEF+s8D7WcI
         urSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=llfdsR0m;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tm4DnbHi8nyJDwFphQMiqHFOOotLAhLwgyWNyA/pqgw=;
        b=J8yHKdHgAQAEZ0k8ktA8DKi41PNOGibZJADxr5z48PCf/bIDTOow2fhMeOJoLE20lT
         je6HMLPzgONY+ckCT8oizKtxoWPTYxauvzDHTfidFUuCDGCucVhCOY9NgUwbW4f+yBRA
         1aTKe/EtTsc5gSyOxYWpvU+NXAbcF24ybuIV0ejz7YUUb0X1/bhqW1MB4OUrILQsHu/Y
         Yj+dS38U0tfNjDMVFdq6x7s2D8W1rn6SllsMl8uBkzLQeJKcGUD+wGMP2LBtGA1M23VW
         kfjM23mgbVI/Jey+B+a5KsO9QN+eWkpb9fGYiu00DTUAzNucaAqVDvdFSA+Z1x2lw/O7
         2pXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tm4DnbHi8nyJDwFphQMiqHFOOotLAhLwgyWNyA/pqgw=;
        b=iwukrWcqTIhEyWtEGq3DFUIOo2NzaTBRMUXZTDU+neIGuZ1Xk2q17oiodqU4iESRin
         IdLVd6FXU/BAIsia88if5xGsU2Gf+Nwl/LfOFpZmTptyY/oxuXbhBHjSzA0DFwAZolmF
         cfXP86ehHcBrKEsAU7OuUqvyCczjKk4UaUK8GIU1JO/uVqgTPN4vkchkSO+Mmyms+sEN
         HhEB3xtjFTrExkkO7ngtMyCNiYMwebsTE86HdLJ7v/VIIxozQSk13pz79S0XK1b4jPFu
         gryISQCH0nZK3MbuoyxqONt5rR+CE4qyhd4vk33lUlDOLvWUyCWkaDZuCnYwpIA77OfW
         gDzw==
X-Gm-Message-State: APjAAAXQgDeTNRB4R2EtcorYVcbd7uFYxd+THG2suwCnBlbWzWfI4Ang
	rH5qce6eK9jLK1rkj1LhFEU=
X-Google-Smtp-Source: APXvYqx0G92EfsFBpLvapdS75eGZtEczT8DV/sgO3Rfd3mrfxcByistf+aHu9WFrKoh23B6ibLGAKg==
X-Received: by 2002:a67:3011:: with SMTP id w17mr6557971vsw.102.1572640379388;
        Fri, 01 Nov 2019 13:32:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:ac13:: with SMTP id v19ls289048vke.7.gmail; Fri, 01 Nov
 2019 13:32:59 -0700 (PDT)
X-Received: by 2002:a1f:9b05:: with SMTP id d5mr6234677vke.48.1572640378963;
        Fri, 01 Nov 2019 13:32:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572640378; cv=none;
        d=google.com; s=arc-20160816;
        b=xwhmGzNEf0r8fcOPB4aVNhWvH+CPE9hW7HiAxLXkcArT8lX2eFEMFBHZI3KYHlM4Wh
         u3aXpFTdzgPxGkjwH4nZvI0438U1NxQ5wLhGll3RmW0qVV11grdOiAM0auhsgDP0+qrc
         EFNVZuEhZBpgyWYo12Z0maFcrIc8ORYr1ty/kn7pao8ERmitwbnUz4e8g7FcOkaF86Zi
         UXae2Nm7UNoGP9CjaC5b7zCRUMgAHdrRpfG50NAs2QwQ6bxgArSzCk3k1GFLVydKLZiN
         0/OPYqiaIYPqqtGqSRdfmmGIiW6nmy9kUepJjaclaFN7qMMtezYTG0rEFf4rKB2yAL+j
         gUZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4dKpzKxgNAxP7uchZEE718nvYJMIp2XAO+c9cDo3MTw=;
        b=oU9hgRjR+tnfHK+A1bjxyA1zw25qW/XiawPtkVSRFe+xsMOF0mQum0hfBkE1qIuvkO
         ayGK2+mevwIQxrzhIF220y6Z2FoV0XHJ5Xd2KG4kp46VFdN1EaipPKqDhFMCNOByytI+
         kTEwrnrPiFGV/coAiaNxas6UomydkwdY88X2BL54C24HkzN8La1ZkyzYkScOR1YfhjnR
         W1vS2aIwoc+YBDhqAX409kmEwt9YY3u0AltYj277KfbLSaRoEddwwWsJianZbUo1s2nw
         TMXcbDR6QE89mAepwpv4XNlTUU33IPmd/Ff2rhPWia6F9wzMJ2pX+cdrgIVUwNVi3Acg
         1H4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=llfdsR0m;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id y8si418830vsg.2.2019.11.01.13.32.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 13:32:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Received: by mail-vs1-xe44.google.com with SMTP id y129so7168689vsc.6
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 13:32:58 -0700 (PDT)
X-Received: by 2002:a67:e88f:: with SMTP id x15mr1725327vsn.5.1572640378099;
 Fri, 01 Nov 2019 13:32:58 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com> <20191031164637.48901-12-samitolvanen@google.com>
 <201910312056.E3315F0F@keescook>
In-Reply-To: <201910312056.E3315F0F@keescook>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 1 Nov 2019 13:32:46 -0700
Message-ID: <CABCJKufrebN0C-9m09bXPMhqfB7tkiaaPvuG8+pJSszMBHYcKQ@mail.gmail.com>
Subject: Re: [PATCH v3 11/17] arm64: disable function graph tracing with SCS
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=llfdsR0m;       spf=pass
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

On Thu, Oct 31, 2019 at 8:58 PM Kees Cook <keescook@chromium.org> wrote:
> IIRC, the argument was to disable these on a per-arch basis instead of
> doing it as a "depends on !SHADOW_CALL_STACK" in the top-level function
> graph tracer Kconfig?

Yes, that's correct.

> (I'm just thinking ahead to doing this again for
> other architectures, though, I guess, there is much more work than just
> that for, say, x86.)

We can always change this later if needed, and possibly figure out how
to make function graph tracing and kretprobes work with SCS.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufrebN0C-9m09bXPMhqfB7tkiaaPvuG8%2BpJSszMBHYcKQ%40mail.gmail.com.
