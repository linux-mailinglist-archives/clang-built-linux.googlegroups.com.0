Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMOI5PYQKGQEPCCZWWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D5E153497
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Feb 2020 16:50:11 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id 39sf1410551otr.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Feb 2020 07:50:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580917810; cv=pass;
        d=google.com; s=arc-20160816;
        b=bx86+un/uqhF0Yhi6dK6oMZD9IKz0ZpqEl3sGFvF5AxrYtHyOYqB+WZsWkmCTF7xa/
         uy0J/XYgn8jSneCsnvpN8zw/ZHYc4xJEp++wDip2SXhOHGjsfSIky7sDRiqnkLv7h/AA
         1J3NeW8RONbEO1Z+bP5x2w9Ql1ZoQOYfsC/i+HQbuBKn7D5qqxo0Cnc62k+aJvexnmYb
         FGvTk46sAjJ3WEPzGvmCL9YtQic86UmmNtMF5s80wT3GaBKikP7wD8dt4O0CfxcXCtaK
         dxPTTgvYY1ZJHkVNx+uaXlWKBFqwtZ4rIUVn/NzOe65dGit4JKd1gzcBfm8BvjnAFnL+
         n5kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=SdDCDN5rHhZqR+PkgkYyyNpzsVo2AK6shxW+GqqPRsY=;
        b=XoHRiGQ+mmzJm2wDYh7xwsGJCvx31a67coeW2ZsARmn1i4Qy4iUSJhNkVfDTynUV5l
         ypXNstiasMR1iEitTLAa6os7GQSFv224/+mGVacNkqmj6ZbRPCGyq3wOjPsTY23+fADr
         xQQYyQNcN0qahuQTmgJ3qKm/IGL0nQEYhCeqVQvOsKpeDkYELKZCEwaoo2OPlc8kfpgk
         RIkDT+OrUqwRaEhqDKxoycWUOP0hU/oXoPhFO3L7lpRV6lizAs7t6oO0E72Dn76x9lSl
         3s8QpxHv1x1358ymzER8JHqTfZtBHNvLLUCqxlRqMtDnYq2WJy1yw71FCD5YWykNGTq1
         TJug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nmGxKmVU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SdDCDN5rHhZqR+PkgkYyyNpzsVo2AK6shxW+GqqPRsY=;
        b=iJUuqG6XzoAPgRhJA83AXhRNBYYOc9PUi9vaCx4gnHZcwnfOUPDHG1e//m3iHZfd7g
         d3PKg7ZJvgttlO+CE0MnN9Ewz23bdwW3gT3nxuqXc3yCPc60WhMWI3umOh/xNm9+2y31
         rwKf4px5zC/dAbp9FaiMdt9gTaVjNPZQtJ00uXzKiqplCXTRe1wcJweCseMNBcLntOTE
         Vrq5jyhPvW35WYRAqlU9RO9uFfb9HYUKfRtt4YyiFR3Ka+sTS7JSEIRaXkZMIuB0L9ou
         Nr9WuflWhaaigHvNuAbl2zsbrswTpimYx44HXiTkf5M0ov7U3yhveaFyrYBPox0N/8KH
         KlEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SdDCDN5rHhZqR+PkgkYyyNpzsVo2AK6shxW+GqqPRsY=;
        b=ZGVWQoCfBBGHx5+W5c7Sja/cO5v+VfcxSdj75oLhTKvDPSILRqq1X5Ko94RVTp1S8X
         De3NYUJhn/JgjgFhUG/6QM+iLvZV5Y1RD042lyex7KHjM6J+5OKIl4gbXu15p4BJLQ25
         Ib0DN6T2H/yZzVtozmjicd7cgyE4hTOthm+ONgdwUHtHn9o4bFMB4iyIUr9qAGVGXt1H
         5mrGr5lO37wbZigWbKGNh7FGyBzOeB67dcLfyWUN+mzdhG9SYUKAroJU7ZYPxnwHg9bW
         RTUCyjv478Vl1axhT/nklog3SUmGDTWMZgepK+2dX2V+kkHkk9wywjoz0v0xkJ7BcO/K
         eRAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SdDCDN5rHhZqR+PkgkYyyNpzsVo2AK6shxW+GqqPRsY=;
        b=ql2cHe00/Hs+7W3WiJJ+v4mK2jzGXSAEnhEvyic+CLnCaQNQuzuzVBXZUt7vS0+wHD
         t5bvg3DTnf9wNAo7dTcRPnAlAfPZN6CpgOXi7eh6KTNQxjgJKhoorVE/4Ajbwm93Hi9S
         9F5L5CQdSY/55NWN8ZRd7kiC6ChiVjfmntirj4azkZ11725ZszH5/Ga0zgt4e9CoRVRz
         XgLokjG60m667/hY+qnGHHm20h2ZRR+2eqsgpbxtrnfdavpZtfbiG9AJrr8tyCFfho/H
         yj2KRiK6Vrxae0Vayi+px4nPWJTxcs7klVacYNloyolQ/y/CD4VblRe8l5vZPVBVII4G
         FF3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUHwJd37XF8pRhd0ZIZgP/8z551uh5QuNfxfFPXvtApAk/oMf0b
	isuDX9nL7s1OVdW4LW+Dwsk=
X-Google-Smtp-Source: APXvYqzq+CckFi9CoSA/0HQjFMqBtIq0I9ohimRgp8W1dz2z6HpJWRwWBXuBfblGOnNbAXZ+AYJ7HQ==
X-Received: by 2002:aca:dd05:: with SMTP id u5mr3385168oig.91.1580917809949;
        Wed, 05 Feb 2020 07:50:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:7282:: with SMTP id p124ls677265oic.4.gmail; Wed, 05 Feb
 2020 07:50:09 -0800 (PST)
X-Received: by 2002:a54:4f16:: with SMTP id e22mr3487105oiy.170.1580917809522;
        Wed, 05 Feb 2020 07:50:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580917809; cv=none;
        d=google.com; s=arc-20160816;
        b=SIBpuvphhM+OHNkCYOZSuc+TWBOsHxCbYA8uUcO8oJVrnCLopMZQlY1fxoM30+qtgv
         271VEbCE1FVA7EyFdr2xSSiUmqvC3UKuaC1z7I35Ddokf8805xLToqLS3hOOOXp4ex6A
         Hrlq0IJbbs0WFTYi0C/EOtoQ/FLzz9v0aG5l7qevjldonL2V42XmQB1JMkTC4u/y6Tlt
         ADJTsAu9nn8Jj6x5CYowsYeYwzo/WT5A8+53O4dhJnZOk7Mp8tcfr1P9bNahZf13E9kM
         CZsAMzCBIXG2nmjGh0833rxTY+6da57kAGGi5e31U+a2FnF9ktG3+H3LnddZ61zLUGP6
         c0Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2aqjudvMlvh0oAgf6gAKgM5a6NLakebVIMf7FzqBKbA=;
        b=vwH0ff5msxgZVW1X2Hi2C1XhTziVP+v06hqkupJuhFoujSFURYpOKRmf095yVMST5w
         VigKYilo+2HriFhdV3zPS7zMlT9LxNt0nYdLOZBDSHHMN3HSnokM2eyaETbHj1ibth0V
         pDqHmI2f59IVOj66LJ0FX6Pcb7ocH663QKt6H4neBTrITSeAZII2W3wELcgnQlQH0WwI
         aJqcivdWLb95sVbmXt0BsrHlaglq32p5ZKDokO1TACpboQbfL0A7NikqnZGmqkSj6IKb
         DJ7kuCnykc8L9qwU4tzlUiT1KigBlDtrzUJ1b/e3qKiCUP+EIGC1SHOCuAZoY23sGxLZ
         t4NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nmGxKmVU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id s10si9086oth.2.2020.02.05.07.50.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:50:09 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id l9so1173966oii.5
        for <clang-built-linux@googlegroups.com>; Wed, 05 Feb 2020 07:50:09 -0800 (PST)
X-Received: by 2002:a05:6808:b1c:: with SMTP id s28mr3416836oij.2.1580917809086;
        Wed, 05 Feb 2020 07:50:09 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id v25sm1349otk.51.2020.02.05.07.50.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Feb 2020 07:50:08 -0800 (PST)
Date: Wed, 5 Feb 2020 08:50:06 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ASoC: wcd934x: Remove some unnecessary NULL checks
Message-ID: <20200205155006.GA21667@ubuntu-x2-xlarge-x86>
References: <20200204060143.23393-1-natechancellor@gmail.com>
 <20200204100039.GX3897@sirena.org.uk>
 <20200204193215.GA44094@ubuntu-x2-xlarge-x86>
 <20200205102238.GG3897@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200205102238.GG3897@sirena.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nmGxKmVU;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Feb 05, 2020 at 10:22:38AM +0000, Mark Brown wrote:
> On Tue, Feb 04, 2020 at 12:32:15PM -0700, Nathan Chancellor wrote:
> > On Tue, Feb 04, 2020 at 10:00:39AM +0000, Mark Brown wrote:
> 
> > > I'm not convincd this is a sensible warning, at the use site a
> > > pointer to an array in a struct looks identical to an array
> > > embedded in the struct so it's not such a bad idea to check and
> > > refactoring of the struct could easily introduce problems.
> 
> > Other static checkers like smatch will warn about this as well (since I
> > am sure that is how Dan Carpenter found the same issue in the wcd9335
> > driver). Isn't an antipattern in the kernel to do things "just in
> > case we do something later"? There are plenty of NULL checks removed
> > from the kernel because they do not do anything now.
> 
> I'm not convinced it is an antipattern - adding the checks would
> be a bit silly but with the way C works the warnings feel like
> false positives.  If the compiler were able to warn about missing
> NULL checks in the case where the thing in the struct is a
> pointer I'd be a lot happier with this.

Yes, that would definitely be nice. I am not entirely sure that this is
possible with clang due to its architecture but I am far from a clang
internal expert.

> > I'd be fine with changing the check to something else that keeps the
> > same logic but doesn't create a warning; I am not exactly sure what that
> > would be because that is more of a specific driver logic thing, which I
> > am not familiar with.
> 
> I've queued the change to be applied since it's shuts the
> compiler up but I'm really not convinced the compiler is helping
> here.

Thank you :)

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200205155006.GA21667%40ubuntu-x2-xlarge-x86.
