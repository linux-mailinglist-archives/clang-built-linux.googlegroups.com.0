Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBT4QSX6QKGQEJ5LW5QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9292A9687
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 13:57:51 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id l12sf485182edw.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 04:57:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604667471; cv=pass;
        d=google.com; s=arc-20160816;
        b=COFihMwQtPacmqtZb9OxF2M6I0sUU8Wq6X9JX7NKS4yfsySdIgB2EMk6wbLmuCvRo5
         XlWSggsPhR2AQlfbrj8cq7z8iw0M8Y941qBAIRO+5pJg2QvK0527E9JYZ6TLKQvjwLiW
         nfY5Re2t+BqPPTG0gF5zdunB2xmkIxBd6bQavXZI52ahT4i3G7A4npdCtELEfVM2Niur
         MpWnsJlM4JxvrE4tIWexKjlvhW1pCs1IDu2B1E5F+saslP1r/1+I/ZldgzCpvwjx8n3M
         /pVYtJI73ozG2S2weYK8YXt/Agd4vMFmGmr6ToeVoiJ/KZui4X8yN6DjgkJlsED0VLSM
         HRIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PC6Dt54KJz2vT/ZG8Aj6JaCp9napj6+1A2kzxeHMx2Q=;
        b=lFWZz9ZRAvt5FQjwRIhns2VeeJr2u4UiHMw2b8oEsP65AKwgm52wCFkr0Yn78/qZD3
         jyUZMQyyJmwrgWSmguleumksPt/4Wv5VdHh4Q8zbDaiCA25fYT7h16987Pb3/Z85/+/d
         sPvQXPy4BW596/0eUV/KaHuGQ4pb2KG0m51h7Q/HRgdnW9PS9/U4ZfJNpr0l9N5YBQ/o
         r2yAcx9Tr2umEyy79a/xbODzCB+NiLcJxlIkhlMRBm+HfjSv7iKD/vSFxraRwqRh1LHA
         AsTZl3ECiccY8QWnMlVi+U/k8C4/qx7zTLGj0U9nO/j1JesD+5h3rEgLgETT/cJGFDpN
         tZew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=PpYWw1Sr;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PC6Dt54KJz2vT/ZG8Aj6JaCp9napj6+1A2kzxeHMx2Q=;
        b=hZ7vIs3WkqPvaUaJrSlHNBHf3BWf05U2PfrYFCOacxWtr9SJKLr6GXaQDTEzONACRB
         xtjyIM2TvI+EfuZxIu9zmJJAze4R+oXkRXBkp5/ED7qMSqDTdzNU9dnzV17pbqUslBUw
         s8TCbpzD2USpbky934qnbV+S7hHJFQhcVrLo4nrXlD09q2aoBloTnPW3F4Td4uHvErrA
         ow6CajFPmb/In/ya3Xg0TA0KIGc02F6ondIvDLatOD0sqEBuZNc5OAe2vPjLqVZe2+Xm
         rabqbdX3WhfvX1/rUY74/9cxbaSE2Se++VTs5ZKwKC7eK7wAGZ7eojgDLmPLSSkkoxYu
         j7+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PC6Dt54KJz2vT/ZG8Aj6JaCp9napj6+1A2kzxeHMx2Q=;
        b=DwYsd5wWHF72igmJGFC8OMI2LewP5K5o2iBlbPlWSjkBLvTRydGN6YlyHH5+fXOu5R
         Cx3XQ2s/vQTEtu6KUmw4aRJjyJWjfxWas/CLws5ddg2luK6cGCZyXbf1yPherS/klc5Y
         yxP2C1Ehqz5zdLCJFOvBNOsQpzHgasTIuyWvOyPGAAhX3BQPrzN6ZqmHdyZI8vCKSX9P
         AIjwlYFLYE+hIrdMavVce3Cp7E0BN7ty3IenDhVq7GO/JSku1vQ98i7VYaNfPu+7IjHW
         MsQ5LBm9jOceGLD4T/iSqLqe/Rn4JpUBz+qomIRoCHL+diYxRTK2GVnMskrCWxI5izO0
         GTZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wrFZoi/iZkI9I9ehu3dclWatQABnbqhidlib1hlUM5/FV+DAg
	CuFAXmg4luH7AwBU/gm0ZI8=
X-Google-Smtp-Source: ABdhPJxkC9mX3awJDoL0aJ5Oy0oJE6yRY0hUPphckOHeyKV25pTYyjMpPf1YIH6NSrorc9SfIO7vKA==
X-Received: by 2002:a05:6402:144b:: with SMTP id d11mr1874752edx.195.1604667471573;
        Fri, 06 Nov 2020 04:57:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c04e:: with SMTP id k14ls538604edo.1.gmail; Fri, 06 Nov
 2020 04:57:50 -0800 (PST)
X-Received: by 2002:aa7:c5d0:: with SMTP id h16mr1905228eds.7.1604667470656;
        Fri, 06 Nov 2020 04:57:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604667470; cv=none;
        d=google.com; s=arc-20160816;
        b=R7ViG5cYCyyVjfwtkXrNBFJhWscn/1ItwNHVCvpAUvruSEWGru9X/Yk6q9mU+nZAl3
         PQrqhEgWusPYdj0ELaniG7M1nVgBVhWa7V+CO682Fg3KddiK5XowNIn75Gopu4Hds9WB
         J8+haWtY1Oaz/WrBf/Ai7h67BYqw/mA1NqK6PAghpjIh3iq++//s873IyJL//3SlyX0V
         ipBkZpOoQfLYK8FUAoZA2EIpEii5iwuUXS6XRexJtOUhWy/T6jA8w5M1z3fRB2zLoKhX
         pKFneqsPmb+ir9+7Bms54WHaENUvjP19UeMcpUTGEIcgZAurqnK+tqT7CTsDoHwvm6ES
         S7tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8GDVDLs9bnVzNuwPnm3MLNtCohe/Mct9rfNb0ZEHf2E=;
        b=fMuLELi0Lm4bYwr9+5DAiWyl/OLLJTlbyAzWsfh8qvlTgXBRNQyG0ZOd+vEFQogRij
         9VMxdOV9extCy6/p6mtOf8fyi20NKpMHA4z83N5doXZerazF/drhYpzbWrTTJh4KfEKd
         Snu2MmG1MZ0SfXsI7RbcnbE87QxFkU2tF0J8620E6FPK4DdTugCXta0txsYijgQJPx/S
         QcsJwr0y7WCoHgz7cxfO9v3kBcZgDQsVKas0Rm6vXbDFpbtN1pOfsjdapdmAdODRxGzp
         zAvUbbD8sb3I6vbAJd4fB13UzaB63XRfIbscC8Xqer3B8GDwIL5ZmLMrphL/Q+8sD+TD
         nYog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=PpYWw1Sr;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id v21si32005edd.4.2020.11.06.04.57.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Nov 2020 04:57:50 -0800 (PST)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 1733CAD2B;
	Fri,  6 Nov 2020 12:57:50 +0000 (UTC)
Date: Fri, 6 Nov 2020 13:57:49 +0100
From: Petr Mladek <pmladek@suse.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	John Ogness <john.ogness@linutronix.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH] printk: remove unneeded dead-store assignment
Message-ID: <20201106125749.GU20201@alley>
References: <20201106034005.18822-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201106034005.18822-1-lukas.bulwahn@gmail.com>
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=PpYWw1Sr;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=pmladek@suse.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=suse.com
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

On Fri 2020-11-06 04:40:05, Lukas Bulwahn wrote:
> make clang-analyzer on x86_64 defconfig caught my attention with:
> 
>   kernel/printk/printk_ringbuffer.c:885:3: warning:
>   Value stored to 'desc' is never read [clang-analyzer-deadcode.DeadStores]
>                 desc = to_desc(desc_ring, head_id);
>                 ^
> 
> Commit b6cf8b3f3312 ("printk: add lockless ringbuffer") introduced
> desc_reserve() with this unneeded dead-store assignment.
> 
> As discussed with John Ogness privately, this is probably just some minor
> left-over from previous iterations of the ringbuffer implementation. So,
> simply remove this unneeded dead assignment to make clang-analyzer happy.
> 
> As compilers will detect this unneeded assignment and optimize this anyway,
> the resulting object code is identical before and after this change.
> 
> No functional change. No change to object code.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

The patch is committed in printk/linux.git, branch for-5.10-trivial.

It might still go into 5.10 when there is another important fix.
Otherwise, it would need to wait for 5.11 merge window.

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106125749.GU20201%40alley.
