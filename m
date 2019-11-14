Return-Path: <clang-built-linux+bncBC2ORX645YPRB3FTW3XAKGQEE3IGZKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6D2FCCEC
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Nov 2019 19:16:13 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id 19sf3561488oii.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Nov 2019 10:16:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573755372; cv=pass;
        d=google.com; s=arc-20160816;
        b=tq5Qtf5FsL1nJTzNWmYN5XYIQAWecch2nufhu1h10sARD/Jp4vfIxgebrBZWNagzma
         8LgpkRJmriX3SmSellKEoMcA7IzYS423U+qKflSX6jMuqaRBM99z2d95xfzfcBRzGN6+
         WtDqy2fax2q5QYW0YPaeo/PqgexIxKSGvYsKIvw0+b3LDDaLEsLGoDa9u4nfwaDhwcwN
         jKDS8Onz+55rVL20R4A7rM1RqtcQuKxHhJsUkOM1Nb3gA//X4isNB3T0xjXnC30j8ZHb
         0yaUyb4O3JBquEBJJJMGjn3zbkX5c3k4wiq9jieTdTXF9kICzoFGFBSDW79atrlrwubu
         Xi3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cMMIcZ5FmuZNYIsJ8q0VriCWsi+A7jQTk17BDhhuYsM=;
        b=JGocgAnYlDUcZKCR/9ePnIZLFowInfcLIFvtOWTaBbvbreZHF289+PPOmmV3Q1HJ8K
         GNYQ2q2odLXHKa4+dtp6da2uKiQ7TAmILrN+CnAMfqLgnpkSTFOiWVaJBGW6QAnqWjst
         +JJC3qyVBdvQnniLpz2yNeyeZdDtZ/8eGIoZUQ7RvY0cEJYEatqYaSdAXxFv0Y5c0G/7
         cgBePBhPAjNo49dP03RQjx/jSvrdwvoIYU80/sCAxPjjNIoExX7vFFqUrRf6ED3FBxNo
         aE1MBwLdH+Aa9Kh9iDKZshh4v9fUKNZQQ5HItS9kT23PE2Z5ilZf5YVqzR43xxVS6Hdm
         q6vA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mO2PVhZ1;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cMMIcZ5FmuZNYIsJ8q0VriCWsi+A7jQTk17BDhhuYsM=;
        b=AmvUtsy7qDtSreq6Ez8SiiM9Q9n9OPbxPC7Vk2sxWpAWy0ldTNjrVfgIghFxW1ax0N
         yYDu14aezkfwSYYsUEQl83p6ea3Oss4GJt1Je3MdHJD+JXAawf+hZKQhaz+qBGd8b4CZ
         qyUC0xskA3xs3fqIrDuWy3adtReAadZsIgG4Ewzq6Q9UkBjU7Ee5PYKCv9qB92WILemq
         Z1CfpdA9aw4amiyOCrC7kTYMExemWAeWDuG06KbQM1rJ2Yj0PVWnKvGE6L1fNKbbMFQp
         rulRChNsreCiussehl8Ay6Fp8w3vHTE8ChOCO87Q5+wlpSNtppisKIvz/DU6iMHfSt5Z
         uiQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cMMIcZ5FmuZNYIsJ8q0VriCWsi+A7jQTk17BDhhuYsM=;
        b=S1XaLFNeSbkivUHOH84eWOknxx5UowbcFc4Dg5Kr8dJeGnTMrk8JpTcK+/lQJJu5qw
         EVYDxnL1B4lhaouDIkJzLRH5p47dXxCNvEaADgqgogrTZ15Uj4S3JHOY7mOzWybMO4kz
         1BHm1UWIukDrkpAHPpIzFl0lIXz7jL/gMElB7WEwmI7zVSKmRCKB80uNowXUe8bNomoV
         ipxeIujOsUBA4L4zoJzhj2lt4Ybi3VoTpaebEab/R998+tY3rKpe9g9KzFTM0JixGofA
         U7WiIW7FHgwpOKXSAy+vAYtoLSt2BZiyntue9f4Il4JkHr3DxCXU2muJcDN0OfVtn2ZZ
         xMTA==
X-Gm-Message-State: APjAAAVF3eR/v1wOMrW7rq7cfUxqkQLZIxEn+t5/zk2+h8OcU2+zOTs6
	j6LzQ3tJ/Z0bZ/s9wS6Zzlc=
X-Google-Smtp-Source: APXvYqwmDUjdJBk33XSWN0Fg8DpkPOLdcUNZCGxB+F9GHwi6nKM8fBY6BafwfweS3xRatdrZNsYRWA==
X-Received: by 2002:aca:4b86:: with SMTP id y128mr4737105oia.179.1573755372299;
        Thu, 14 Nov 2019 10:16:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d645:: with SMTP id n66ls1907892oig.3.gmail; Thu, 14 Nov
 2019 10:16:11 -0800 (PST)
X-Received: by 2002:a05:6808:84:: with SMTP id s4mr4793991oic.107.1573755371820;
        Thu, 14 Nov 2019 10:16:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573755371; cv=none;
        d=google.com; s=arc-20160816;
        b=bchYLemSNlpKFxW+0y5TpJhqfpW6cO5BbyeJLz4CvjZ+DWSuFtdfilFiBY64SRdisr
         ivY4dsTgJZty9GeUnk6OEIvu4zZxhbqIjUJg6E1FpQfq2uiy13ESrkTTPhIrF+wsgUmL
         XSqaRmjWSNAwrNgl6js+TdsiSBZv3DLWmBzuhrsj2FRWZM5UvmAXEimFAjsNqneQ4lic
         Adr2GFJJ47BkVW2jy67kroPDL43DVSMoB6lVUriGXfQoT571SL7Ba7+B+FUyFVGLuqX8
         +nhxx5LhKjlerxtAblZZIQ6Uj6IfsAGDA+WismPRiOLjtf83NtBsofYfCXhEgE5a0GDm
         3sTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VxmH23UIh9bgluRuYOUap2wtF++JOc1rV8xUaBpEJ7o=;
        b=kK88NOc/NJ34lwadOt6MzlZFyBl4WMwRFuIklxvqPTVI/JXcZafjxAGqcUuqPCMHlO
         6Fu8BPnjHR4i4zmVMAgHoVSwTfLUEMVE20so5ri9Qcw77vmwUvvJ3BdGcMGkTfLbCW/A
         f+7UnCRBtDWtvaCKaVI38tH9ehgPwhACioNlYXOChGiAXy6gXFRITx/fzrRIlUXUvw0X
         m5dlLFR6XR1V6Jk2sfIftcZ28uaXpyHswh++Wgvq7K6fnfsg0gpyoK6/QzQ0CCuRqqgE
         ZMfur0yAsgoLJEVTgVQn1cx4ZePNTTIg1yHOdfTFcjp49LiN58gpd79588DIaYpdNFAp
         fXfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mO2PVhZ1;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id i23si368982oie.1.2019.11.14.10.16.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2019 10:16:11 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Received: by mail-vs1-xe41.google.com with SMTP id m6so4487366vsn.13
        for <clang-built-linux@googlegroups.com>; Thu, 14 Nov 2019 10:16:11 -0800 (PST)
X-Received: by 2002:a05:6102:2041:: with SMTP id q1mr6523378vsr.15.1573755370771;
 Thu, 14 Nov 2019 10:16:10 -0800 (PST)
MIME-Version: 1.0
References: <20191031195705.36916-1-samitolvanen@google.com> <20191114165730.GC5158@willie-the-truck>
In-Reply-To: <20191114165730.GC5158@willie-the-truck>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Nov 2019 10:15:59 -0800
Message-ID: <CABCJKueJ-J5MPj4-qL230iM3Bu8Qc_4wsViRgt2nJD81_EVJLw@mail.gmail.com>
Subject: Re: [RESEND PATCH v2] arm64: lse: fix LSE atomics with LLVM's
 integrated assembler
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Andrew Murray <andrew.murray@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mO2PVhZ1;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41
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

On Thu, Nov 14, 2019 at 8:57 AM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Oct 31, 2019 at 12:57:05PM -0700, Sami Tolvanen wrote:
> > Unlike gcc, clang considers each inline assembly block to be independent
> > and therefore, when using the integrated assembler for inline assembly,
> > any preambles that enable features must be repeated in each block.
> >
> > This change defines __LSE_PREAMBLE and adds it to each inline assembly
> > block that has LSE instructions, which allows them to be compiled also
> > with clang's assembler.
>
> Any chance LLVM can be fixed to avoid this bodge in the kernel?

Unfortunately, LLVM developers consider this to be a feature, not a
bug, so it's unlikely that we can change how the integrated assembler
works:

  https://bugs.llvm.org/show_bug.cgi?id=19749

Note that this patch is similar to be604c616ca7 ("arm64: sysreg: Make
mrs_s and msr_s macros work with Clang and LTO"), which worked around
the same issue in the sysreg code.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueJ-J5MPj4-qL230iM3Bu8Qc_4wsViRgt2nJD81_EVJLw%40mail.gmail.com.
