Return-Path: <clang-built-linux+bncBCT4XGV33UIBBM5LTKIQMGQEV7GL3XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 667C64D0C0F
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Mar 2022 00:31:00 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id h11-20020a5d430b000000b001f01a35a86fsf4966941wrq.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Mar 2022 15:31:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646695860; cv=pass;
        d=google.com; s=arc-20160816;
        b=goV7VrwGUzCmTpwACBFV1DZ1JRob7gSIJuI6+sEoRFoJ/cHXl2qb/6YbCkwKK9qjQ/
         j+Kmjlle5aJAKyByBCcybFl6Y+kPWlyx5F2HBhwD8uaieawTmFkN7ryjNi1smH7ORWr7
         lYSfD8No0zWG4mIOeabflm4giw0Io5ZZrQRs5gnMVZZMk1C5lhW0rLJ0sEzA+n8zDizf
         pNpAbIUANUZoXTQYzHxPFKZKZYqBhVF1u8E4HhYwVicQAkyXpaBNqPR5NDl6P3x/xeQN
         JPTLnjnzv3lp0OKUeTD+FQqN4swN7QVPPVLb7v/yMZp0WKkLL2EkW5xW24JR3SqBXiLp
         iItQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Ta7bzpMVP1n4AFe1jY36IeQLIRpQU8ZfimGS/e8Lo1g=;
        b=m0v9Mv4r8YKnZKb/EF507PjNVlhQ1kQQeNazQz41PmbrERaQdKniwch5N7lkG7tdNn
         MIqKFYh03XVPLG0XpBwgEKlN/7LOOrmwYDfOdoWf7b7cQ3Ci0nJ/51I9pTW+yamE1X+X
         gsA3XF+4gWMFFAXacNXSu+Zbcojppnhs1PWz6UgHxbvqSP6ELCxBlS9xHYX4Ucy84hLP
         EldgEBUX0nI3YDqZM7EnP1wKgIL/fZPW6Fm4KnPxF5I4854dYoJs2HWuC6kzQ8A+SM+Y
         BTKPN8CxQQeglAtqkQXvu7lCrDQopSpvtqyamRZMLU3w6wU3YWsXhPxS/FkRao0+dBG4
         pibg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b="REJp/obT";
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ta7bzpMVP1n4AFe1jY36IeQLIRpQU8ZfimGS/e8Lo1g=;
        b=LsWrSuWOwGx5zrG29+K3BTWiaITU8Hai0qBVMJ7/uYL/4sa7yawz+IF46YuUfiNrEP
         qF/x8Tfzze3ePHL2yU4T8j4nJyYExOdi5W3FsxB1FkFidWO7omXOmLaELWpUoUH1VByB
         E43kKgFWOMxyjQSO8y5FoirL/+XAtDCoscBflZq8LCNbbOqfpkoSL+K23ERs1V54Gi7G
         M3yX0mvHSa/2OXVmQEY8U8ZTRy1ocZsHQ4E+8TEzH9h25souS0MzJUF20I08vzcPbjjU
         QTaC06F7TZtZfqkt+Pb9gFVW1ULiD/1p/PpVfmUO22xBUIM5RgP6qK7cKhk+UQ0Lg+L/
         PRww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ta7bzpMVP1n4AFe1jY36IeQLIRpQU8ZfimGS/e8Lo1g=;
        b=phPZ85eRJelRWCU/3evEPF1z9l1pReB6S961iYONy4X+wMRipiVvvRokSdXedjBwmX
         bu89w+RkiSWt0IhqpMC3dCsjbXeM0wVQh8mUXxKmY/rloYjshDalI6Y/LPoVoIZhRrWg
         B06t+9Sv3bYpHzBkEGW2jjd+DzXyZSBvVYb+cC/X20fNDvtLG/nyla/SjZMyrCS/hzYQ
         ZoBMAGiG9ibX/k0mo0ipLt2eS8pusLd0TwX95RsaHjvIrR+C9UDfZQXRibZYNjoJ/emZ
         BvM28uAWXe4G4XJMC4eIcBzY4pjZFgtj4UrWlZGaTQAgd1kZd4I+4S72WngW2rK6/WBC
         W4mQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gpp1BdX2pjnqKQ3jYj7dOXzLsohYxVu6a5Qe0JEst00iGcBNr
	x8NblauOSn5h6YQn2QDKj30=
X-Google-Smtp-Source: ABdhPJw+kEoaOvqJeObhuAItMnqmhhxR8Kz9N+QSlT69c+PQPVTa1UqczlZQz8wNsNVlkwvo4bTOsw==
X-Received: by 2002:a7b:c1c7:0:b0:382:ab44:3688 with SMTP id a7-20020a7bc1c7000000b00382ab443688mr1089280wmj.153.1646695859949;
        Mon, 07 Mar 2022 15:30:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:2c6:b0:203:6973:4da0 with SMTP id
 o6-20020a05600002c600b0020369734da0ls509897wry.0.gmail; Mon, 07 Mar 2022
 15:30:59 -0800 (PST)
X-Received: by 2002:adf:db01:0:b0:1f1:dcea:2b7f with SMTP id s1-20020adfdb01000000b001f1dcea2b7fmr10324772wri.598.1646695858955;
        Mon, 07 Mar 2022 15:30:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646695858; cv=none;
        d=google.com; s=arc-20160816;
        b=GWwum/qKEcTb+jNUMgnogkCLVrhz3OwqJrk0DFDsEkaGdYRnVejIb97tPAq1spnFfx
         9sgQ/aqJt9PNrimjIVKP6MUpkgvlVssSQb8V6NEUa7Ofyc4TkDszaYBVUiQjnwGEQrR6
         l+WLqQ3taTKmNHoBeUeA0TXjOepKE0jWGZ1klprTDZvL6nyYJ23g/qqoef2BgVVG+v8b
         Hu67EiG+bl+BAVlzPTLpBC47Tm8ZtI4ffYCkV4V00OIO50khdLL3/ApaSiFzNQLADrP9
         FzLUYg/TUVzVSa7fDLPpN0WCvsvpzeF2797QCxPOi8Ct2qHCzJWp/N0mKXgBA2tl+0az
         kqbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SKVYlW+SaPbtXLaldV/c2tOkTLAJQkDeAtzeUsGyBlQ=;
        b=OhovbKbW0KglEOZmSMuxNJUCd6pbtWOQPWVRbwX4vlCI4YZRH9+DcQF7Y+KTyJu0c5
         ydlCpYoHa5eMf0mMY0XQAOWS8irecfAOGXVHcVREK7HFZGjzws2y6MDQld5kIk2YDa5k
         3HhcG1mKvrX7Y+zjWVTgtZzHwa05I4ycuzZnLlzkCvatveZ0dvGrwN/AiJYJZwt3ganb
         cvj9MA7Q2mm1BAxTIGIn/Fo4WISUwHMcTO37GciPM2f4VmDsPMw/jHnGMbnSHU6PbGc5
         84sltFbrSEWGWQMUFO6tYBvjoalCOMXY2u5s3UIVMypJO2CgoZEQMtq7N/5pD3SRBEBA
         Qyhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b="REJp/obT";
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id l3-20020a7bcf03000000b00389c3dbea83si5142wmg.2.2022.03.07.15.30.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Mar 2022 15:30:58 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 94819B81752;
	Mon,  7 Mar 2022 23:30:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00BA1C340E9;
	Mon,  7 Mar 2022 23:30:57 +0000 (UTC)
Date: Mon, 7 Mar 2022 15:30:57 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Balbir Singh <bsingharora@gmail.com>, Tom Rix <trix@redhat.com>, Nathan
 Chancellor <natechancellor@gmail.com>, Nick Desaulniers
 <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND 2] taskstats: remove unneeded dead assignment
Message-Id: <20220307153057.3212144c1ba19a10573df079@linux-foundation.org>
In-Reply-To: <20220307093942.21310-1-lukas.bulwahn@gmail.com>
References: <20220307093942.21310-1-lukas.bulwahn@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b="REJp/obT";
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 145.40.68.75 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Mon,  7 Mar 2022 10:39:42 +0100 Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:

> make clang-analyzer on x86_64 defconfig caught my attention with:
> 
>   kernel/taskstats.c:120:2: warning: Value stored to 'rc' is never read \
>   [clang-analyzer-deadcode.DeadStores]
>           rc = 0;
>           ^
> 
> Commit d94a041519f3 ("taskstats: free skb, avoid returns in
> send_cpu_listeners") made send_cpu_listeners() not return a value and
> hence, the rc variable remained only to be used within the loop where
> it is always assigned before read and it does not need any other
> initialisation.
> 
> So, simply remove this unneeded dead initializing assignment.
> 
> As compilers will detect this unneeded assignment and optimize this anyway,
> the resulting object code is identical before and after this change.
> 
> No functional change. No change to object code.
> 
> ...
>
> --- a/kernel/taskstats.c
> +++ b/kernel/taskstats.c
> @@ -117,7 +117,6 @@ static void send_cpu_listeners(struct sk_buff *skb,
>  
>  	genlmsg_end(skb, reply);
>  
> -	rc = 0;
>  	down_read(&listeners->sem);
>  	list_for_each_entry(s, &listeners->list, list) {
>  		skb_next = NULL;

Yup.  It would be better to also reduce the scope of `rc' so later code
can't go and read it uninitialized.

--- a/kernel/taskstats.c~taskstats-remove-unneeded-dead-assignment-fix
+++ a/kernel/taskstats.c
@@ -113,12 +113,14 @@ static void send_cpu_listeners(struct sk
 	struct listener *s, *tmp;
 	struct sk_buff *skb_next, *skb_cur = skb;
 	void *reply = genlmsg_data(genlhdr);
-	int rc, delcount = 0;
+	int delcount = 0;
 
 	genlmsg_end(skb, reply);
 
 	down_read(&listeners->sem);
 	list_for_each_entry(s, &listeners->list, list) {
+		int rc;
+
 		skb_next = NULL;
 		if (!list_is_last(&s->list, &listeners->list)) {
 			skb_next = skb_clone(skb_cur, GFP_KERNEL);
_

(we could just elimiate `rc' altogether, but I think the above is OK,
perhaps a little more readable).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220307153057.3212144c1ba19a10573df079%40linux-foundation.org.
