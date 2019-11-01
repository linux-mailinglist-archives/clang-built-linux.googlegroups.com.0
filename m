Return-Path: <clang-built-linux+bncBC2ORX645YPRBM526HWQKGQEJ36S6IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 616BDEC6B3
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 17:28:37 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id i6sf7751346pfd.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 09:28:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572625716; cv=pass;
        d=google.com; s=arc-20160816;
        b=IIVl4rDp9zLYmqiv2bBI0waG+0An3xMAppq/Crzm/ALnOS5F4jnbSgbF5JSW1uXJFa
         Xn+W1FPnN9z+w5Rq9HF1kJo4q0kFfivqntUKTBusksvr59WGqNqS+kLZ2Fr1/Wza4vRH
         rfHVfPGhVWxcIulvcB18zxJksW8ql7fVpf91QtQA7c2UyAemS+LCTfBwrXZWLAcEZ8VG
         DswObj4nOELZSwV/Lks8oEt5RnjX2AkftMj/DJqROKg0UAYDacTKI6/x2LHa/Zj7Hb2S
         d0rrq0upNcpGeWT0PcK0ZeBjbns5+6CYPr5xE6C/pAec6MY2wSK/LNJZg7kLt5sKl2xU
         0h4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oO/MM0sd2cLM3rpq4NyIDmSYyv1/sobDpwMCzP4eiRU=;
        b=gYqU/PwVXJaRwP+6kEvEMqzKea/38Tl6xkOz8Wit7HVAnRuNxr7OS2riuizXkJMq+q
         JQHC1vzKF9UlnrYsVKjaih7mwBFBcp4rpK78bh2WaqCtkSUi6oY1c7V1uuhL2N7jpXk1
         MXqohPhGUMcpJTtE+hpIfTh+yRBTSuFY0MVx7UqXUPiwMjjhznYuNNVQ2WK4izsNumQt
         ud2fbIhEIzBscG1BPVl7aQrVs9ojj4s0FenWTinuBn9H9/te3BIprSrUmu4s8DIbMLNx
         6On+9tveoq0h/ZSv8UuC2ZSDHosV0ybbWu23Vkk6o/JKMjO/N/iSV9Pgf4+CTpi2O4ya
         tW5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ai3N6Ic4;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oO/MM0sd2cLM3rpq4NyIDmSYyv1/sobDpwMCzP4eiRU=;
        b=Yvh59rV6Xv+VyQBeQ8pY9inwq8DhM9qe4Udll2t3n11denm6Oqb/hwUG88YnQvF4J3
         DAsN9VpFU+F0SrqGhxA/QyzjsysYZuSZGgyBcEY24iVVEAQht9T1gjC3ewKyA1s+fQQq
         eotfkOrgYkD7y129AffriB0+VpgvWgBhj0lMtJ2N+3hc9sjdgDgw99aXVxPrR+8xGwE5
         ORHzxMScXo2vEPBjUtlyjblhgMWU7LVI9H12ZBezFt7NTEjkf6EY5125oN2tS1DSTjKy
         esTPinb7s9xrYXGSfcICWUt8MZdmp0vAoxhBIQJzIPgn1zrKbkmLBwFnBQgi3B//tQTE
         ANtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oO/MM0sd2cLM3rpq4NyIDmSYyv1/sobDpwMCzP4eiRU=;
        b=fIMtjfCnTfrRH14qbd4nkjfun7uOKbJx5W+0jBnLcv6NTS1yBIzAoF+3PYya+vwl0q
         mmWLENTnlJLw/P07KStztEDuSo4RiwWN6KBSITpgq7TxCn5/HYxd703cyAoT5KHfDyow
         gwHD8nxYb9a7+Yr9ub0w1C7x9tWE8psp6Y15KMDqi9c3lM3XQWAv5bgulZ70kRzi1c48
         EZVfocsKFADWkS7gj81XaO8+C4fCNahGD+1LNHyr+55M/E0MWUdHCnMOeAzCRKYXiQOl
         0UtV1YmQIJOPiYPfQi40kTm3H8sUyz/0fOHZK6PXDVLMRqOvYAAc6eIqLxumu0xuMwjE
         ydVg==
X-Gm-Message-State: APjAAAVZlLYbln1/hfK7507sTpTGevcdwm9MJ6vNoOYg8g3dby4dRyRl
	VlVzLYbVuK1+YFsbxa9+A6s=
X-Google-Smtp-Source: APXvYqx7vjTMnM/8kXw9jtoODuzG2tsgCvQcWYUAVqg6MIYRXUKjgvD6ByBwuvQ3Pz8xKVSh9p6vAQ==
X-Received: by 2002:a63:5f54:: with SMTP id t81mr14167118pgb.20.1572625715470;
        Fri, 01 Nov 2019 09:28:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b0d:: with SMTP id 13ls142297pgl.8.gmail; Fri, 01 Nov
 2019 09:28:35 -0700 (PDT)
X-Received: by 2002:aa7:8a97:: with SMTP id a23mr14533438pfc.76.1572625714983;
        Fri, 01 Nov 2019 09:28:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572625714; cv=none;
        d=google.com; s=arc-20160816;
        b=ZOdXdw7KIzIxP4vsyLEvccQzAgiQBQrDxRY6YDiTfKOutfVCasrcjSsuz4aVKtBuzY
         eG9EwUQd3cNY5OseeWMgwTPrXJ4vZyQY3S0j8FnpGjcLC6fEqpTTf1JkH0jrDvDvdojm
         QWf/IKfVt4/U64kET6UHhwG+Hk38HaGCDObQ1QmWp6ulC0OXt8drMWq/gyYIQ2wdIaw8
         aR9MHSggideLnBEDxaTNL74R0B0VcjC9tKNdsGiu72W+TeQt5PhqA17rOHF+7T4By4E9
         dbJeDuPuNy5OJJRhns1pYhLtLTejSVOv6zHszhWJcKuMawXbksqdhkHoU+5M89m7iWHP
         wCrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cugJW9F3kTAr1l84/vLpT5yr86XijpMcBnCXxXWK4UA=;
        b=AuDH3r98Gb+tGYS9JXjfrqYwqK9Dgjuk7SYKYlBKBxtIBvrzqwKeWPx55OAhU+4m0e
         rIjgoI52CGdWLoMJvZiKT8SmsEusZ05c3Qwwct0g4t/9n4W+2Q+6l7dfrWq6OhJnflbe
         x2KrS3ZRAHvZ2n928cZNkd/waVBSMls1rgKYd0mnYaWDa/CQutNbLxDyrvA/5yfarYPj
         Coz196auCv5L+Jbsr1YYAhjTTcuV7BwofVoagTBP1LfwqrI5ZK9xqHyGI0ZrGQlpZqq2
         //MZcoeauiPALKSRyIeiMAIsksaO6o5MipFJdOyKpTZIQQP2shEXemVsnS5hGunQE53l
         0w8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ai3N6Ic4;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id ba9si293658plb.5.2019.11.01.09.28.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 09:28:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Received: by mail-ua1-x941.google.com with SMTP id i13so3082569uaq.7
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 09:28:34 -0700 (PDT)
X-Received: by 2002:ab0:2381:: with SMTP id b1mr5975220uan.106.1572625713398;
 Fri, 01 Nov 2019 09:28:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com> <20191031164637.48901-6-samitolvanen@google.com>
 <201910312050.C538F8F3@keescook>
In-Reply-To: <201910312050.C538F8F3@keescook>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 1 Nov 2019 09:28:21 -0700
Message-ID: <CABCJKueLtOJsq+k-ywyUCOU+QCqxjKN2bO76Te4U43g0Xp9g-A@mail.gmail.com>
Subject: Re: [PATCH v3 05/17] add support for Clang's Shadow Call Stack (SCS)
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
 header.i=@google.com header.s=20161025 header.b=ai3N6Ic4;       spf=pass
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

On Thu, Oct 31, 2019 at 8:51 PM Kees Cook <keescook@chromium.org> wrote:
> > +/* A random number to mark the end of the shadow stack. */
> > +#define SCS_END_MAGIC        0xaf0194819b1635f6UL
>
> Is 0xaf.... non-canonical for arm64? While "random", it should also
> likely be an "impossible" value to find on the call stack.

Agreed, and yes, this is non-canonical for arm64 and AFAIK all 64-bit
architectures the kernel supports. I'll add a note about it.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueLtOJsq%2Bk-ywyUCOU%2BQCqxjKN2bO76Te4U43g0Xp9g-A%40mail.gmail.com.
