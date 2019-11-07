Return-Path: <clang-built-linux+bncBC2ORX645YPRBQULSHXAKGQENRWEAYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D9EF3495
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 17:26:44 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id r16sf1333120vkd.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 08:26:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573144002; cv=pass;
        d=google.com; s=arc-20160816;
        b=aE/mZ3fjD03sfx11xf7Scp3BkZG4JZwDRIAH3CRq13vAHE9SYHVHtlWKQ5+3M7iLRE
         CjFLltoCMQRreK8SQK/3sJCAagsmDvQvE1T5d3sk3W5AFGCkjsshXWXBVzREtDC/H8rv
         XoA6ijIPFnpAUYBo2TSkEe/6j55hqHJ12nqea4wYc9wFC8P72oHa4KFVBdNXKkBkO0EV
         uTOb3gcRMIHBwuX9kq2P9vIptd9V8ou41Nip3Nci/HgmbooG/n7jeNGogrRjvjJ5yoGW
         i7AXBojIL0/Vz0+xLjf4XrY6qjUyGSv2uq00flHeNZU8V7Hjh95fXU2ZSEyP6vF5nD9Q
         2wnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=L0btR66aG8AjoK+e8Y7c6Gi559662QeOScBXhIf2xDM=;
        b=jA1pmvczqF4FzXs7GR7p3bz6IgR4jGgl7kPtcuJCtde9Fhb2ilwuN4XamAl7/0d44n
         XbbGMN6wQKDe54zCLbuZmCGWQDhAWHS3Clyukg/hsWXOjfEdilWbUHfGwrV9uU6MllL1
         ZxieMruVOPaFbdqZcajCMlTjdTV62WGI7pVJDj4UW3cM7v/LgGu7qm/CLfTo0P8/GiXY
         KJOmFfwOU+lllH1DMBKuOGoX/ylkRX7t+rpY1LIAfmEy6x+RCm/9dBpg87S7eqWzVezV
         miwyYKn1s4W9g8QRnQ4fW/tOUcF/YS510kwDPPrDsbxjFgo0/Skiu506MbVCQ3jXI0Eb
         T++A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jZ5+6wBU;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L0btR66aG8AjoK+e8Y7c6Gi559662QeOScBXhIf2xDM=;
        b=fbLjjG6GRy7w5Houv/ENaAqt869XAsRxGHpDueBV987GmEufjqL7nAhEGqyzNmroUo
         xwoEFRfY/MYi5mLXzxb4yE0/RimI4i41OzuojICzyu6kTG+X/HD8T5co2slWGxcNiqYv
         D3IZd8ZJCcpFySB8YlfpmmOfYc04jDG1dt50rnoslvZriOpEsjdgoixOYCQy5+BcMi2a
         eeXJvLCG5/m4OoiNGBc2dzawCD/X5UvAETiKX/cX8egZpsOoJebsCrulQth0Ds2/GtNk
         uQDMpOoplu3q2F2E+XpN4WIdDnP+nxqkwBAfBF3HjAQmSISJilVgNZ1Kh2CV4RBdLCCp
         9MTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L0btR66aG8AjoK+e8Y7c6Gi559662QeOScBXhIf2xDM=;
        b=WmdTQrhEWux0Xal3S45UyTyxTt5uRVyyMBsksN39OFdjPerQpzen2apR6a/FLJBwg3
         crWMsTd1m5Dq4LpVEhGUCeTJnXuT7bsQ0klqBSLU5jJoguxbAKhHJCI1hp2SSzGrTv1f
         ECZHqekhWDGJMW1fWesbebztJGC4M62goBFdrreZ+kNKxpg2+Tk19oQypZrKOSXOA44p
         oeBU/pFWbxwdLH4xzAaCTuWuccOF108U4h8Q2KuJJ0KGXZKRXqMuL01/qkBvng53ek1u
         k6SOJHgKzi0fam1nOUDdVDfsCy0irylMmmaUuQw0C08ItW7ZPdoYLTCWoyJAspQblh3g
         iYXA==
X-Gm-Message-State: APjAAAWvW1NZvcxkLg6Q1zQmkWGGqJla6jfSh3w+iBwnuJqmoL6j8KSf
	vlKEuXpy6aEpX9b4n6Job5c=
X-Google-Smtp-Source: APXvYqxWtODWHx8mHZDO7EnRlCdDfBnaSpPq/fjX2uo3b6hm1PayhcnGc7gzE83h/ucgDUcg52vZvA==
X-Received: by 2002:a67:e2d7:: with SMTP id i23mr3264743vsm.31.1573144002763;
        Thu, 07 Nov 2019 08:26:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c506:: with SMTP id e6ls144940vsk.7.gmail; Thu, 07 Nov
 2019 08:26:42 -0800 (PST)
X-Received: by 2002:a67:690f:: with SMTP id e15mr3431519vsc.170.1573144002297;
        Thu, 07 Nov 2019 08:26:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573144002; cv=none;
        d=google.com; s=arc-20160816;
        b=bMiYCxrwbap+UdnungrQTHO9sB/xAjFlfhTQBX86RYC2HCOmiCaHKKz9tbQ2SYe+zJ
         WBKh2GrYgR3L2xlJEFtivJW5EriGw/qX0XhZSaEFIrnELPxJihKMekmQp1z9HMEADdd5
         MrH8CDRZfyjhvvPlMzzvPrceOSan9LZgl/rt1wJlPSVxsnWwgMCSeDMIiM6DkgySMuX+
         7cKu11czahHG0CeVGIeJfZwO7UV2NAWNMgCiQL47sQjNzIf5WRTZHFdydy5MVoblvVCV
         o3SAF0eLc38p8IiLsITFHvwfkpTJB80Of7gcN0Nr9tzwvEbE3v7c5g11E8z7+LzbBdLn
         FNjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AHVtna/ZK+ShoKE32vj/oIbQxq9UojFvas7d10KE8fg=;
        b=JtR7F04+2YNd8BGYHAN+Pbrd/SgzmAWzKRV+lUyWmEvvj5U/NnhCKZ55FaYgiJopip
         6QWzoWACKtCk7qDjmAdIgfC5gII8jRlHoWggGN7L+VMrjErLfNO9WajZ7XZP5wWUuS3j
         ZOUtwMfs2+Nj27HRDBCtZ5vb3BdQRPD4Z22gwZhqsf87Uhz/PWbdQcWoytY3CK++XQdP
         PFSjBS8nrV2Am3SFrn7Y+w6lZm1Gwy4wzJfNRU8Ol779n7NYfxoGOob3i8AuDBkY1fhq
         ZoClfMUwchmLWJRSZQxHtEDEF7PcQhTQl5k8oEq8ChYUMcYKgNx6Q35wspMASlmD2F5x
         TLkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jZ5+6wBU;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id s197si187620vkd.5.2019.11.07.08.26.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 08:26:42 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Received: by mail-ua1-x941.google.com with SMTP id z9so774510uan.3
        for <clang-built-linux@googlegroups.com>; Thu, 07 Nov 2019 08:26:42 -0800 (PST)
X-Received: by 2002:ab0:2381:: with SMTP id b1mr2931374uan.106.1573144001488;
 Thu, 07 Nov 2019 08:26:41 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com> <20191105235608.107702-12-samitolvanen@google.com>
 <CANiq72mZC-G_R_RJjapZS+NvkQcrjdiri0NyHUgesFzUpe-MDg@mail.gmail.com> <CAKv+Gu9DD12BPV_jNv9Hjw4oSiZvtdiVVjB-B8WLXCoPL4CA9Q@mail.gmail.com>
In-Reply-To: <CAKv+Gu9DD12BPV_jNv9Hjw4oSiZvtdiVVjB-B8WLXCoPL4CA9Q@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 7 Nov 2019 08:26:30 -0800
Message-ID: <CABCJKuc9sxRRkfieExiFcYu0Cx=ZC=jyw2xXqsoQhF5-46HVDw@mail.gmail.com>
Subject: Re: [PATCH v5 11/14] arm64: efi: restore x18 if it was corrupted
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jZ5+6wBU;       spf=pass
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

On Thu, Nov 7, 2019 at 2:51 AM Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> On Wed, 6 Nov 2019 at 05:46, Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> >
> > On Wed, Nov 6, 2019 at 12:56 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> > >
> > > If we detect a corrupted x18 and SCS is enabled, restore the register
> > > before jumping back to instrumented code. This is safe, because the
> > > wrapper is called with preemption disabled and a separate shadow stack
> > > is used for interrupt handling.
> >
> > In case you do v6: I think putting the explanation about why this is
> > safe in the existing comment would be best given it is justifying a
> > subtlety of the code rather than the change itself. Ard?
> >
>
> Agreed, but only if you have to respin for other reasons.

Sure, sounds good to me. I'll update the comment if other changes are needed.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuc9sxRRkfieExiFcYu0Cx%3DZC%3Djyw2xXqsoQhF5-46HVDw%40mail.gmail.com.
