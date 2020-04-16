Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXVJ4P2AKGQE2LZKIIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6FC1AD265
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 23:57:51 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id f14sf4419691pgj.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 14:57:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587074270; cv=pass;
        d=google.com; s=arc-20160816;
        b=o+mUCTAeClu74c7pNURlU+B2YPFtjYRGgxDMDdTJcuXgIIF7awR9Qx18OySlJD868g
         yI18NJGkOJbCSOf7SCTNdZoOFYsK5NvtGUpiwxVIsm6exQ14nYU5pm9Jy5ITMGUZS5cJ
         R+qIouU5UXb+QuwNCl/HlXRxEoLU6X6rK/pYym2JLaFzasvd89ixqemVRg9wGcjJLX2A
         dxMnMWMWcKWrJijU3w2+884yUbO5snVx+jbY0Z0mBg/0HfVWYK2n7xB5yySIsVfK5bgK
         MJPXEK2IU49XiTefKzIvOT6K24BaaWfcAff99uDLeTV1APEOOktvC1RqkAGNc5tLZphI
         XihQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VtyKlrn/svvr3q80jQ/uCYfWO8fxK111XJnBEm+H/yM=;
        b=TxlFYeADC369lu26bfjhOf91v++9HVkE4uyvh5cNQSNXOtzSGK9PWEd+SRp6RZQaO5
         N6a6nUW+zTi2S4iYCc1h4uBJ5SEXRgyL5GESh7VIafyvaqBcQNEIwSchzLrcIFJAYB6f
         AealyRqPcQUFJv0LTnvWkmsHyjUXJMoW0P6/UXQ0C8sMMZxYgiZGpFrk2D+5my/7MaHR
         81nzNPcT73MRbIUFoXO/Ic6vhV4cJpIYkOyQvtCRy03oE3usdU7xHRPNxtnG/taAor78
         o75S8yttPg9tYorW7cwDq3GyFmO4ZmrqoDxNrNVin/J/+70326Ya6V+ehVNzd1SE7/ix
         xzBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tVI41oES;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VtyKlrn/svvr3q80jQ/uCYfWO8fxK111XJnBEm+H/yM=;
        b=b6QK8krxpk/YztHz/7lv8s0JHjWZvE99qyl2zvch6QbJg0QHwnfZsij7rlTaHUBU6T
         jXTImSYPu+wzOlWaC/AZFRgBYrw/rvy5DXuMHKlrB21mnU/pqjiqx5Y+8cPyhSN0k6LZ
         JAubmhNPj0q2q8Vt84OktYWrhPen14cPm3KPUrTUSiiJu0uMAXlkXllLMwHka6cvrq+n
         K5tJ3q0pEFbZLVR9qguCM0DPn9yh4Aa2muQZKNRsrjD0G7inHbxqY+Ny0Rgbw2r5+V75
         CxrcB+9R/evMAppm93jPrRm9sXSetbN1a2OSTqxZuUNcrc3GD3+DS+xhoOqGCzjgp+Fp
         j1oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VtyKlrn/svvr3q80jQ/uCYfWO8fxK111XJnBEm+H/yM=;
        b=ML3QCOjjenxv80koCuJ0kSyLJkLVxQO4FFgJbfDY8os9rjZxD5xGg7bTeogaKqTx+p
         B+r5dVrq2vbd3hEepg79VZSiDIJq7suhU7cQjxsvulvF9J1aYZ4CQA1r3Ieo62rZZBdz
         S+F3oNB4LNKKeG+8LZJ1WBRdpW6UB7e9AbVAst8v18aa4N2fuECHVwCSofI+1DPhANxS
         FvCIxdPkic0OaH3Nir7oaSXvbZtjMR6S5/9z7+Qhczh7bvAVaq5H99twCmCD5jbDY6Te
         jPn6ryWp2aKYNh7MgMj3wwPTpvSJb7lKnHQCZzqfC0PKidvMOPxC0s2i9W1FjEyQL69y
         PvAQ==
X-Gm-Message-State: AGi0PuaO0EpckH8AZFpF204dqvZI6si0Tk7cI8GiuInf/eeZtHS/H3Nf
	RQlt6rOzft+CXxW7v46l4P4=
X-Google-Smtp-Source: APiQypKg2yiXtBfnYgztQbfXwkILedJTRDW+v0p58l/ZixPvc0QZNQoZrl0fBgmqbvuC/HWl4bkInA==
X-Received: by 2002:a17:90b:3556:: with SMTP id lt22mr498825pjb.138.1587074270571;
        Thu, 16 Apr 2020 14:57:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9a44:: with SMTP id x4ls158211pfj.9.gmail; Thu, 16 Apr
 2020 14:57:50 -0700 (PDT)
X-Received: by 2002:aa7:838c:: with SMTP id u12mr3287257pfm.91.1587074269930;
        Thu, 16 Apr 2020 14:57:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587074269; cv=none;
        d=google.com; s=arc-20160816;
        b=fXZFWjUhf9C3uffVwXQiiS7Nbg9O7it/KGp9joWmEaswx1U8OjZV356lL5SEAcmsfN
         BZDPGi6v93v06Kvu8hCD28YRyZC4kHJz1my9VFXm1ks/lB1WrWIwbixRMsKlgeEVxAC7
         nHczRJxBnHeVDXXwajo7eoAo+bqDDswWnizEVP6kLRP/FYLWhufH5tUUyMMYvVakCYWx
         mC6twclEfwCWmDADVN76CTRoVp51QxAKrlOsF8T3NYpco/P4GDm5msmJj4jrT04eYkOW
         +buQEFRUFF38YMR38Oxs9eTu+HkS/bamAhlnFZMDTDcU6SPKDYgf4DwH8xrdQuXL1BmO
         PGiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vT/IDBelAw7Iy+8YBhPmkWx+lnZLFsGUZ4SFQAWcjxQ=;
        b=wcmfMGyPZTICS4oP8/AH50R3NYpJiwhBzEfnkJedF4EALV2L806SGIYGwXLsY1/wlL
         2RZI1gQ4Lg/6uKV6JbQuz1Ky5+1GYiEAUujNPrVHHA5ThBZrLdufHhEyZIgpDHqX0lEZ
         bVpOgtI9QTK9IUuHpstznAnjYgSeVKhCqKNtVnpjNRzprSrPX8Ss4LyuSHIiXR4ha3+t
         bi45VleM1gj8wHuIy53rFGdhBYLry9Kb74Y+fo9XwaDSmrJDB2aj77hMfs84ge+nBm6B
         qwo/zftIKHj5G1wy9EqKWChNgTZ1RU2Vc+q/yh8VYf/t8MHD55NzWPEv1rNOnKtxFdDf
         jY0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tVI41oES;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id v22si1321023pls.0.2020.04.16.14.57.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 14:57:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id t4so124171plq.12
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 14:57:49 -0700 (PDT)
X-Received: by 2002:a17:902:7e42:: with SMTP id a2mr289439pln.223.1587074269243;
 Thu, 16 Apr 2020 14:57:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200416182402.16858-1-natechancellor@gmail.com>
 <CAKwvOdkCMsDUGK88xGqfsA5Nc1eNmR+PbLBoHE0dv65aimcJyQ@mail.gmail.com> <20200416202415.GA30964@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200416202415.GA30964@ubuntu-s3-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Apr 2020 14:57:37 -0700
Message-ID: <CAKwvOdk3iQdqeLON8VNRb-9eHJruQPxi-7P5_aqt5M9oyz=GVA@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-arasan: Remove uninitialized ret variables
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Adrian Hunter <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Michal Simek <michal.simek@xilinx.com>, Manish Narani <manish.narani@xilinx.com>, 
	linux-mmc@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"kernelci . org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tVI41oES;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Apr 16, 2020 at 1:24 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Apr 16, 2020 at 01:16:27PM -0700, Nick Desaulniers wrote:
> > On Thu, Apr 16, 2020 at 11:24 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > Clang warns:
> > >
> > > drivers/mmc/host/sdhci-of-arasan.c:784:9: warning: variable 'ret' is
> > > uninitialized when used here [-Wuninitialized]
> > >         return ret;
> > >                ^~~
> > > drivers/mmc/host/sdhci-of-arasan.c:738:9: note: initialize the variable
> > > 'ret' to silence this warning
> > >         int ret;
> > >                ^
> > >                 = 0
> > > drivers/mmc/host/sdhci-of-arasan.c:860:9: warning: variable 'ret' is
> > > uninitialized when used here [-Wuninitialized]
> > >         return ret;
> > >                ^~~
> > > drivers/mmc/host/sdhci-of-arasan.c:810:9: note: initialize the variable
> > > 'ret' to silence this warning
> > >         int ret;
> > >                ^
> > >                 = 0
> > > 2 warnings generated.
> > >
> > > This looks like a copy paste error. Neither function has handling that
> > > needs ret so just remove it and return 0 directly.
> >
> > Forgive me for not taking the time to look into this more carefully,
> > but just a thought:
> >
> > Having functions always return a single integer literal as opposed to
> > having a `void` return type in their function signature is a code
> > smell.  Did you consider the call sites of these functions to see if
> > they do anything with the return value?  I understand it may not be
> > worthwhile/possible if these functions fulfil an interface that
> > requires the int return type function signature.  (It's also probably
>
> Which is the case. These functions are passed to 'struct clk_ops', which
> defines the set_phase member as
>
> int     (*set_phase)(struct clk_hw *hw, int degrees);
>
> so we cannot just change the return to void since there are other
> set_phase functions that do set a return value other than zero.
>
> > faster for me to just look rather than type this all out, but I saw no
> > mention of this consideration in the commit message or patch, so
> > wanted to check that it had been performed).
>
> Yeah, I should have probably mentioned that. I can do so if the
> maintainers feel it worthwhile.

No worries, I should hold my comments until I can give a more thorough
review, which I've now done. LGTM and thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk3iQdqeLON8VNRb-9eHJruQPxi-7P5_aqt5M9oyz%3DGVA%40mail.gmail.com.
