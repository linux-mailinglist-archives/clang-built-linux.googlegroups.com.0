Return-Path: <clang-built-linux+bncBC2ORX645YPRBXXOQLXAKGQEEJKRUOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7A8EF14E
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 00:42:23 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id l4sf7068888vkn.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 15:42:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572910943; cv=pass;
        d=google.com; s=arc-20160816;
        b=i0/Pou9VUW+Fi7PRO1Jo7o3yzWBw+9Qy8R+mPcM6R8ZP9T7i0Xkv5tYJ5+PGvQFqiT
         LXbVn93yMVBqGlFakoIStFIrrQZvbQ3vz+rUwZwEaDwdBtm9d4JE7xzutYcauHqfwlfg
         SqwSzOL00n3UpAVnO24jKAsQLDJfzzX81OIhV0RCMn/v3uIEFZL+lQbsz9XSgysuC37M
         n9GmjVzMPCOTuZ5eubDjdsIsHs1eUPqECl7CV1Dz9R1amE//u0zOEulcZdRQmRUc1Hjl
         GmzazlpggrH5Kx+DPuy8+zROp+AeP0ouapvrv1rUySW4SFHkm+MVtJtdcw10D6E3rkGV
         kGXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=i5YarI6+6E26MlOHToSh8VDrGjXbn/OAt9KzFJZn3Jc=;
        b=IJaMUTPKfdAMCYlLy2XJtIlqKN+QkNls8S9BvrnF8qASziHGDHUv9tAR1GAit5HND8
         3ydv8ornf6qagDf5MO0AW3vWoI1CU2yQrzVoJAsQ/Aj/R4pk0a8ZbLgrxS0wD6iyh3Uc
         QyfchrB6i2IH8LJVltw/N2Q6nxEW1pTBLwo1C3Ho7jEmMANlk7SOOWXM/7zJZdKPzuK9
         JGabdqW+tXuC86REpkMwpLKHci5wxwFfErgFF6E57ojnrKw2mkDPEqON6jV/n6q25Egg
         /3OhWFuFSq/S3gvg8po3ofZpOD34+YHiK7bJj9itVEDr7RM6Z10G/n3O+gJ9/Z3HV6/5
         fQag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oGPkCL7M;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i5YarI6+6E26MlOHToSh8VDrGjXbn/OAt9KzFJZn3Jc=;
        b=YQRXOPXHaZTwL/IgfVM6HqpFH5yadexETQEkpdQIxvCPYFfxtjioDzvIQSCf0RIRFh
         hiUWIDk1fcrpfPnUmhH4MJEymTbKpsSl6zKm8Y52Ox2yu7VrwujB/Mgp5kBXk0y6cjS/
         /BSPlgZn0qCyMjJ1MZzrk9qJtzLbqp23v9+MdjD7OdchZllD1Tig691EyR3EdWXVG30s
         uXtfzMcTnhIEWgiNyW85cpgahzooSHJY+oai2sKz0lTeFL5GhyPyGW6jdTbzWiXk2isl
         9alMYh3tvBNHppysC30nCf8X3YgUhivsbCvvp9x9IvZOE65FMxiEkFfsNCGx5TqxsHBC
         MycQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i5YarI6+6E26MlOHToSh8VDrGjXbn/OAt9KzFJZn3Jc=;
        b=N0regK0C/HMg1ukZD+rp4+tEGaoRLMNg4bn4r/RmyvTcuTkMRwGhdMO6FYwQd4L8Tu
         KBBUIa51u6oAlzzhD+NTU6JZ8aTtsTdCZ1Hdl9dPvMssAUAwZ6GIrYTLyPsYRtsTyAvX
         uwGbxgRWUb0mD7iOxumfwWH0PNek4PU8dKDPW9hp7/j5ovXyqe/b8iDdAcaZhc6aNBqp
         dkzZTWUgyJo23izZByZd6npHG2lTowZBtlFqMgVSCFx4B8BrcAG8HSjSr5aw9IIKCi66
         lmWO4vwfCnVX65ERlCVcA/r0QLWFPe8afWorIDv5nKu62M0XmWvMuAPBCTT15xH6TpAw
         PnCA==
X-Gm-Message-State: APjAAAWeK5QESZgbmrSqu4DTMCbI51PIRwJRzI8YIKE+8IhOyfcNB6rK
	5lm5OynOCOWb95nDYHJYUVM=
X-Google-Smtp-Source: APXvYqzKzq+pED2QtFniX3kEruHJWzU9FsFTuYAot4gbNUm/9hMwWxJezrHJHZTOPi14a/9Tqyyc+A==
X-Received: by 2002:a1f:290:: with SMTP id 138mr12918338vkc.28.1572910942754;
        Mon, 04 Nov 2019 15:42:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cf8d:: with SMTP id g13ls1332206vsm.9.gmail; Mon, 04 Nov
 2019 15:42:22 -0800 (PST)
X-Received: by 2002:a67:e8c3:: with SMTP id y3mr2513275vsn.140.1572910942378;
        Mon, 04 Nov 2019 15:42:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572910942; cv=none;
        d=google.com; s=arc-20160816;
        b=U5Jh7cXD5B4pX8jxQnPbcDJ8/4h4GxP68csT+zZpmbYHneEowBt8CeBy3Gmej+5FQR
         e4BVGlCqMd1bQpyPVNgxnJUnkpoMEzhjuzEuoLnAGWSN40nKO+4tEHYDP2fdMJC5npqy
         s2LKukL1MtOfk05M514zfREbXQJYYVGfJYp+z5CZC9ZZsDdkWcNB9eycjVEYa41OWyLp
         3MfT3uDEFPEaD352pQihr0gIyyiKRDUR7xqmaDcxJ4wvUSN3g4HVdAaXX2Ih/onxxtmE
         sHOkUhiP1IVjLUUeBIYdgAYupwCJSUkVczqBqyjZZ9Jdc3lzI1+A70IWhxDJMzWXh98T
         I6ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=r7KXOloQM0IlfDWd2ZmUfquqt9+rdW/LWeVsYzZS5Yo=;
        b=fckORDHVsWwOjdM3l2aKaS/6rMEHTue7wcvcrdFZKIZQeYpA+p8I26FeEcjaLd3ShB
         4GtFPLWq204PR4usPqKNTCmPtBZL5lDnwnQmfJfyalcycMBSyv2OA+XO1qGOhnS4RpGU
         BX46G9QAFW+UpSNdP8qcy2PX1ildlbl6chUcrtQQln5ak/yGtL257nZtmB5RlEWEqaF1
         1UK6HkA6wjvJDtWMB9pPZ2vWSJ7BfvGDf/pjBNK30/AF8Xt/m/y4BikswfMG5PbFuoiG
         gV5EuyNVIDPRxLSTRCERQpDfn+dP6JSDrV0LFfTcluDSBWhlkjUHj/0tVtRu2nIrKAPC
         8bvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oGPkCL7M;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id f11si411498vkl.1.2019.11.04.15.42.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 15:42:22 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Received: by mail-ua1-x941.google.com with SMTP id n41so5555749uae.2
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 15:42:22 -0800 (PST)
X-Received: by 2002:ab0:1451:: with SMTP id c17mr4197520uae.110.1572910941690;
 Mon, 04 Nov 2019 15:42:21 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com> <20191101221150.116536-11-samitolvanen@google.com>
 <20191104170454.GA2024@lakrids.cambridge.arm.com>
In-Reply-To: <20191104170454.GA2024@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 15:42:09 -0800
Message-ID: <CABCJKue=yZqe23DYg3_WyiSKhxXS+GXe+3skhvYon4ytkfH+XA@mail.gmail.com>
Subject: Re: [PATCH v4 10/17] arm64: disable kretprobes with SCS
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
 header.i=@google.com header.s=20161025 header.b=oGPkCL7M;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941
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

On Mon, Nov 4, 2019 at 9:05 AM Mark Rutland <mark.rutland@arm.com> wrote:
> I'm a bit confused as to why that's the case -- could you please
> elaborate on how this is incompatible?
>
> IIUC kretrobes works by patching the function entry point with a BRK, so
> that it can modify the LR _before_ it is saved to the stack. I don't see
> how SCS affects that.

You're correct. While this may not be optimal for reducing attack
surface, I just tested this to confirm that there's no functional
conflict. I'll drop this and related patches from v5.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKue%3DyZqe23DYg3_WyiSKhxXS%2BGXe%2B3skhvYon4ytkfH%2BXA%40mail.gmail.com.
