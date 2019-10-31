Return-Path: <clang-built-linux+bncBC2ORX645YPRBDFT5TWQKGQETHOQ6EY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id C65B9EB61A
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 18:27:41 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id s1sf4893261pgm.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 10:27:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572542860; cv=pass;
        d=google.com; s=arc-20160816;
        b=qh2BeXCVLjhtp9yNVf5xX/ITZ5tsXzKA+z3JCgWKnJufNIYmBJo6bw6eHWNZ4x6zWk
         4LrVg5MfaInoFqGRHXt7EzNf1qzLTrqdEpBlkWR9OO4BX4qIltJfAY7wCxiXFNyUpr3C
         toF6GdqTpBwkR5krtbgxfiVyukryk+aDU4m8Z9Pde0ZFSr6kiRSs6pmAaTw/28FalmGt
         QXBN4+CvMuV64smTHfAVzjOiYmZfr97L+LpC8UF5uIIAuyc+M71jrIpfJM1pH+b+IOlO
         CR3HOPbuq1FcFpWVWvBhJh3YPrLKqB0+rUma5Jsd4yMQK8t8s+qqe9pV17H+V5sFJCEh
         Ymag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=D03c9iE/amfz+N9jHWN5mY6BLtP2JEnFJGhji6Fa3hA=;
        b=zX0iGNsFZoV2+w2wQpf4SryKa0S2GCQ4KOmscEzlNKj68KcpHF9zBfGF1dYmzqFFKD
         QrC/KA/psbPGTeUgVbafW554fXIYt5xto9zQfErrPs52ywgBjGsk3ThQGwzmDDubYk7b
         GeIR7GDglhOCj9ES/yhqxqswmificvHcsA04dokb0i9o6i7K/WdS9+Yw+aoeVzk3PPd2
         h9Xly1MXkBc0xwGTw3H39egBRMqZKwXNa6Ust5vHnZD4D7x9VjGn0Yt0iOs3I5UdlXmh
         qcJKALXdKQchlVLgO3z0kClTHFFC7saABCKSTR+qveDY4CObh9q3dJAMeegWQSZMSva/
         w2qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uKrGepNX;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D03c9iE/amfz+N9jHWN5mY6BLtP2JEnFJGhji6Fa3hA=;
        b=sUY2uf/ROQaW4V5GnBFK0iRDbMgxTHVtJJSCtKGcDT1z3O5A7uxZLG1DELhzytV/1W
         YL6hUj28/0EwnjWK+isfNegOFCxNk99n8+9oRJAbWfmjiYXkWKdcd7aODhNk5sqCti1A
         Ae7P6/pB7lSOpUOfygb/2MAjD+sZINYWeADbLx5vFAyirCWmwUjTpvuFbPR81+wrhtqB
         ynpRbHPmHkvmxF0JUvKQj9t72Kgu+2mORvO1RS7mPnCUz/DWXOEtMz1J90vrriT4DaEl
         OxBExQi0Ec9sLmknzUQBeUCNxtxl8C8ycOQHlnZOHS9uenpn4Fa12yw+2Pg+86PY8pr0
         LLaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D03c9iE/amfz+N9jHWN5mY6BLtP2JEnFJGhji6Fa3hA=;
        b=l0lwg3KkOJoICDuym08JNyyry+bBqHicBjjZhbHbVkwIbZim5MxuA96SGiXdV+gHgC
         Tk8NS+bAFjJ00piAzc24tKmM+rlFZn0FEe3HrrETQt+0OR+idKim5kM2siyFLYSXHhxY
         CrtM+9VZNv/4hoDaNIKd9vOf17HWdzdC6tSqEi8jx6nKDgJiojlMHbLeIbZeeqfJIBuh
         RJSUnYUAafIcT8vJZIKjWycghy7ehrylX0fB/bD9GaJqzgTg/BRS3cBJaJu9bTv8X8b3
         OMIvTfw6HAVGUBuHazKgborZduTpFMLMP7t9W14NPK3yObGyfOtGUvukapRAJtQ4OVXg
         Z5bQ==
X-Gm-Message-State: APjAAAXko7+SzJe79WNJp7ozS7R46LvdsXELaYXikUzQolIkM/paBR2b
	pmfN5go6Z3c/qu/kT8VfSPc=
X-Google-Smtp-Source: APXvYqzTQ7saGFqtJRMP/0Did7fla8BaUiIxW/urgPi5D9NnvJfNCFle+J7mFq8m/ctR3PFv8T4/dQ==
X-Received: by 2002:a63:3082:: with SMTP id w124mr6275310pgw.135.1572542860551;
        Thu, 31 Oct 2019 10:27:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:bd03:: with SMTP id a3ls950956pff.10.gmail; Thu, 31 Oct
 2019 10:27:40 -0700 (PDT)
X-Received: by 2002:a63:4b54:: with SMTP id k20mr8199623pgl.70.1572542860071;
        Thu, 31 Oct 2019 10:27:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572542860; cv=none;
        d=google.com; s=arc-20160816;
        b=wrgIdniFm0Pwx08TWqarxhKLvKm6ZiPJymtVlVygrP9HNXsZo9s40/Gam1G0SO0krW
         QgJE0GqMj4lBEIHdaluilYOcCrce9kAxiOy3MKCDJWCopitCitpiGiMohAbPGpVfrqXU
         8pgdIxEExUT2udtHxXeak47grZI/NcYnPJVaQdUAaEZRSuOgjOPLFvmVpwM9Lux0YvmE
         iPBMbfYwlRe4OZfMetJ3iuKiWyVqVQJ7QEXe1UgR05zUyXA78SZVx7AjKoIcGHdVJfUa
         XW+M7tjvY1pmAnWgh40sPol8Ku+4Yfc1eMbfdHiw0t9BLl+SMQHmhWG0hBfS+WvGBsCc
         hr1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=46AmydREw6SfU27IOaxxeyDyoZWG9jeVi2WIEFhrMqA=;
        b=ISaPutx7tDdkhV1MBHa2NyBJESsshFIZ6+gZx561/Sbfi7m7Ou30kVZc1FBOBsy8f4
         DMDVe0MT9WkNgzBgSniRe7P+0qZEBGzRo44iIL78jyUYN1D+pl+8uvd/kYgAeiWsQC5w
         bAQjx62JNgeI6/e+/aCpVSnKpkQeLbvGKKcNbAMnC2GLbULA29N0muhcA65gBy1QaSUu
         7yE78gOpjxvxwVn6RwVYF5MonEn+XaF0EKtEvWpCMb9XxAeYn7FIn32HycBVbH5E7oik
         hL71dGgyVXWLW0RMVTqPBeF404ra3AuN54TqiKfHetIBghVX7htXpFL9wC05eioZ3HUJ
         e5Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uKrGepNX;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com. [2607:f8b0:4864:20::943])
        by gmr-mx.google.com with ESMTPS id t17si320779pgu.1.2019.10.31.10.27.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 10:27:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943 as permitted sender) client-ip=2607:f8b0:4864:20::943;
Received: by mail-ua1-x943.google.com with SMTP id q16so2130093uao.1
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 10:27:40 -0700 (PDT)
X-Received: by 2002:a9f:3772:: with SMTP id a47mr3382097uae.53.1572542858440;
 Thu, 31 Oct 2019 10:27:38 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com> <20191031164637.48901-14-samitolvanen@google.com>
 <CAKwvOd=kcPS1CU=AUjOPr7SAipPFhs-v_mXi=AbqW5Vp9XUaiw@mail.gmail.com>
In-Reply-To: <CAKwvOd=kcPS1CU=AUjOPr7SAipPFhs-v_mXi=AbqW5Vp9XUaiw@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 31 Oct 2019 10:27:26 -0700
Message-ID: <CABCJKudb2_OH5CRFm64rxv-VVnuOrO-ZOrXRHg8hR98Vj+BzVw@mail.gmail.com>
Subject: Re: [PATCH v3 13/17] arm64: preserve x18 when CPU is suspended
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uKrGepNX;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::943
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

On Thu, Oct 31, 2019 at 10:18 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> > +#ifdef CONFIG_SHADOW_CALL_STACK
> > +       ldr     x18, [x0, #96]
> > +       str     xzr, [x0, #96]
>
> How come we zero out x0+#96, but not for other offsets? Is this str necessary?

It clears the shadow stack pointer from the sleep state buffer, which
is not strictly speaking necessary, but leaves one fewer place to find
it.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudb2_OH5CRFm64rxv-VVnuOrO-ZOrXRHg8hR98Vj%2BBzVw%40mail.gmail.com.
