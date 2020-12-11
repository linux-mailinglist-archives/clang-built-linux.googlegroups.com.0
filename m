Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBY44Z77AKGQELZD7OPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CDA2D7FB3
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 20:54:11 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id n13sf1886166lji.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 11:54:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607716451; cv=pass;
        d=google.com; s=arc-20160816;
        b=W9NHnJIvg6s/djjNhiGNnnYbEhXAor7quDkZ+mv0ffIv0bZNekSV3C07jzWjx+etXp
         9hAWGQWzZBMa9rz9dmOokwRKs/kmv07qiO4Tpp7UwHaN8ISPeqV7xhU94HHwipwoPJLh
         CfnupCAjbSxp0t1yfZCKMUB8DtoLNDG19ow4kvA+xpLTNae3Q4Ko98uo7efWEAExLbwU
         ST922KpYVUGviFJepEdeYfnuHVwODl9yO3aorl1JPQhBDFBt32Pg/bYPZ5fGRc8aaR/a
         V4oG3HuoWhZBkWi/Tt0/NS3XouraeMG502DcsRMdIgD77+cCnzPWvWovqAINf/VcPqBf
         mKtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=cUgeeLiVM4orAvLULNa51gM/ELyJrOiu3DLkZo3sCIw=;
        b=k8MxEwL0fRaga0cyS3ecBRg1uHz+SnHr7Yb03e8qxgsrG4Cp+qLvAI7+eX7JfbH4KN
         /0LN2sD7gNQqKWD9ux0VXQM4XeDyYVqjKMFph/C4sS9+1YuCjbhUqYSMeNLmzGBd9yuK
         1vLPqoLYCP7Dj1qSzn1o/OvKQ+dpWoqxPkW6X6tbZweZgmfMVbDfknv9ug1cDRHYuXPv
         KzYBxb4FEzhOefVq/sXZfpyg9SBHh6CqD7HmhvzTf/nZrOZ0s93kJutPxqWonCHZK2UH
         0+OHzrY4zOdgv+F79KSGVTU+5H9BlBvCs6JlGfhGS1AkK3whGXkTyMXw5jOV6CdUPUhI
         5dHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cUgeeLiVM4orAvLULNa51gM/ELyJrOiu3DLkZo3sCIw=;
        b=TDmCFD+HXCvXTHhG0j+geAR47DpmD6UioYct1Y3GHPPUp+s0tlWfqw2S5AItGqGf7a
         eTPsw0QqqDl5CMSFJsiJKOjWL5pLwUa8LvhrKg4e7WOFvsTg4+15SfUsVPKoh+V0TREn
         9FHeuCZ7uiuju84Zp90UKbb8Yay60TvGtdMnqVu9aSLytlHFOPb6sdI2V5EWPhuJkS1q
         kf+43+ta9DCQ2eRY5mhxIf/1WuNEB2mlDfduRjUicFnBhYPxhTSeXyf0IGHfqwR2F2w/
         GegieoshwtH+lXe2uWFbPsk99JMexw2ooAWyMMDgUxuOJZFxKiS8wTcxnhV6O1FAe7dy
         aQMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cUgeeLiVM4orAvLULNa51gM/ELyJrOiu3DLkZo3sCIw=;
        b=Key3pgGPg8hGHoaslwx9kMLP4572jO3dFpUCSCA16yh7W+jOa6mTF0Df7Y2a4NiC/9
         Zkkx+CxcZxJIrT1ej8cDzxqX2YVXAiXwjknxoGNkywfPkBXC2AlxMGdN0zxAgEkRTcvF
         iTGsrSIzPZ6NvA3203Vg7Ck/dYxSq8dgyfnS/HLxayYZr7XoVixbVlv9gFADZXpFvVE2
         t/MsfQlrydawD+Igk5NqrLgeJBpQ6mdJsoEWSWQ0OZgyYoXSuMCNmc0O8lTIomTTRJpD
         vIdNDNRrtVMn1vOvO50i/aVqqszIw/mUIN9pC1RUqtTYu0mAO/rtZFKFPtnqo6weIKa3
         1nug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wuNtoLDR+v/VHdo+G1Ek+810TT9lus7v3jyHOcA8tU3EoXgfB
	H5clCK28uxi2Vlq6qpLB4f8=
X-Google-Smtp-Source: ABdhPJwqWS/Ahyj/O8rYC5Q0fyMFI1XlEeD24lfcQ6ojJR9i2WYmiXdlZCqDqJMjrBHJRAHLkfgc+w==
X-Received: by 2002:a05:651c:2007:: with SMTP id s7mr5003046ljo.390.1607716451415;
        Fri, 11 Dec 2020 11:54:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5816:: with SMTP id m22ls1422131ljb.4.gmail; Fri, 11 Dec
 2020 11:54:10 -0800 (PST)
X-Received: by 2002:a2e:94d0:: with SMTP id r16mr5642851ljh.123.1607716450305;
        Fri, 11 Dec 2020 11:54:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607716450; cv=none;
        d=google.com; s=arc-20160816;
        b=Z1rYjcPJwFX/72szrggE6VnObQLZS2SJH4vgMpNxTmjdz5hdy/mEjfeeAAII7+dLaI
         KMMtnB/7BJSItdABk9vaGiUkpwHeCDdKzG2zEDyzld+SVQ4wFVxS8hCh0yzj1GLA8G6W
         iRYjKK0jqf5YCLZI0geQV2xq49eP7B2y8IINWDOMXWJsuubmKKhMN7wqDmcl8zjE/K63
         BYI41oDTixm9DTF9tJd9x4taNtMx4YEb5/aD3saIpHh44ObL2HErB69iZvcQl9hejvpI
         ZfSMfcarthKRE+vEIy8eRBpqjjNqSttGSAX+7Gzs52OtnLJCyozGWrNLuX/nX3KMUdZT
         TNkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=tMdYCWiD5S9LRdnx+/1+eEkD7iqVQGyjbZ+stItzKEg=;
        b=yEGfUA1i0HTFgMAuu3c0NmA9QP3gccar5U9yiFdgJmlz1lfz15CtTA8RjHFXNeiTk9
         +zf6fHhEWMUzmOO/I/+APizC/4QAiJZ9JP8jeKnM3QsSq405DF0LthahF7VBcbOvHnOo
         uApgcbNOIUXO4bajbnYHxzPkT67VIaS3OQovw/8M/q8s9S97HSYx5lETRKWAaYsAyQDM
         Tu7Isdr0ibwfEyj4POpVkUOE+JPcVgBjRcVZX5YsY+8ylmi09vnmIsAaGlC7l0VzvoDH
         MNfIPVLv2TgJAGo0xqfX8c87hl8sNWhzoYS1KADe82DPYnx2Coe8VZqdMh8Vz1NKonka
         4hgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id q22si202548ljh.3.2020.12.11.11.54.10
        for <clang-built-linux@googlegroups.com>;
        Fri, 11 Dec 2020 11:54:10 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: from localhost.localdomain ([127.0.0.1]:46544 "EHLO localhost"
        rhost-flags-OK-OK-OK-OK) by eddie.linux-mips.org with ESMTP
        id S23993996AbgLKTyH3DBl8 (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Fri, 11 Dec 2020 20:54:07 +0100
Date: Fri, 11 Dec 2020 19:54:07 +0000 (GMT)
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Anders Roxell <anders.roxell@linaro.org>
cc: tsbogend@alpha.franken.de, natechancellor@gmail.com,
        ndesaulniers@google.com, linux-mips@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] mips: lib: uncached: fix non-standard usage of variable
 'sp'
In-Reply-To: <20201211102437.3929348-1-anders.roxell@linaro.org>
Message-ID: <alpine.LFD.2.21.2012111950290.2104409@eddie.linux-mips.org>
References: <20201211102437.3929348-1-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Fri, 11 Dec 2020, Anders Roxell wrote:

> diff --git a/arch/mips/lib/uncached.c b/arch/mips/lib/uncached.c
> index 09d5deea747f..f80a67c092b6 100644
> --- a/arch/mips/lib/uncached.c
> +++ b/arch/mips/lib/uncached.c
> @@ -37,10 +37,12 @@
>   */
>  unsigned long run_uncached(void *func)
>  {
> -	register long sp __asm__("$sp");
>  	register long ret __asm__("$2");
>  	long lfunc = (long)func, ufunc;
>  	long usp;
> +	long sp;
> +
> +	__asm__("move %0, $sp" : "=r" (sp));

 I thought it might be better to make `sp' global instead, so that it's 
the compiler that chooses how to schedule accesses.  Have you tried that?

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2012111950290.2104409%40eddie.linux-mips.org.
