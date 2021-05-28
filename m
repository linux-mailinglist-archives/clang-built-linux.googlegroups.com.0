Return-Path: <clang-built-linux+bncBDY3NC743AGBBHFJYWCQMGQE733P7YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id E39F1394801
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 22:37:49 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id z18-20020a0568301292b02902dc88381e4dsf2606952otp.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 13:37:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622234268; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yr85hTBqJWD33rIoH5FlJ242ftPHDrZJ04kYBpM41d74GhcAkrdsgWuLgTQ0mjljog
         Zlj9DeYBCJEGy+mQspDeoKtT36pQoLf1ImhVk7mctoP4dzY4XNSJw7liGtkGIgfcG6kF
         SdeJZeTZvQSMtFWIkfeTxI0XVt2tQ8KkY0Sb5s+BZq898A6OKWetuMmdKasI/01Z3MSi
         tgr9wlMuk37SsfA62L1Ip0Gsq2fiIuJbEXsLqjhW30kiSL5dSuQO5cY1Vb6BzaClfxDB
         zZk79mCPwlJvlPNOk/20Lafv48NeSKp3kVYKe2i1hQSfj4vP82Z9+SDEkx88byU44mG1
         o1lQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=wKmRoypPpOMgHqKQIgztjMsz+4H2Fc0eLWOTRX24CkU=;
        b=iNJE3McMz5wGj0WEQQhuc7Rw/+nyzUgXoWvRrBJJXMFAUfKwAM9D8T+3s9CMeQrQpi
         zRzkSM6x1OpGy/rwSmK0jIP3zzmnnMmzEAmp6JkpQg87lADxPUz9icAr4y4c5FX3NwHL
         5S/yjSHxhX+M1buJBmYjZqMURA7C1jFBqE9u5YEHbABYnF8Ud2wOdMLWU/ZW3Vv5q8aJ
         rcZpXToR1Ft0BsHriSP7MW/WWW8Wr6eMQajyjJou1rJzMSNmhMy1sbMyMc1tevbhIVwI
         guqpMhDfWm5tz+d/nNL0lq4pZbkXYhaubsT67+sVzcpEEYoXym/mhbZo3VVU88XKoc/y
         KX8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.44 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wKmRoypPpOMgHqKQIgztjMsz+4H2Fc0eLWOTRX24CkU=;
        b=Wg/eiLclomX0AUDorIwX3CA9jY2wje8ZPv74d3PEoXEKeKUhddQUjl2VDxLNf4dCNR
         kG9NOyF6WsQyGXFzKlvn4mfU2Ze573seIW769hG0t+gL+F06jdIgissEtsVzNNIpSWl4
         O57oVXhfbRvIx2Ei9Q7ItHFx3fgncDCfUs/c0fSAJS0z10tt+gbG+heY9niSA0Inwqso
         N1swwlBZO0fWhUIT7CpoJpeIqNWDtbCHfSBuEM1SPj6RpDpXa1Pgv0aMWipBRjXOuB2m
         4HJN//uzasj5pLbNvH/J8+Bd4WgtbtnOPL3n2SmjBXdxjM80ty2LFgRjHxmFyOqjjqiN
         jbeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wKmRoypPpOMgHqKQIgztjMsz+4H2Fc0eLWOTRX24CkU=;
        b=goIjEw7h8DqbKo1KCjyibaGjCrlptzfSeUDJqrRad89aDKXQmoGMnNe2DVu3H3F/24
         vlJ3viCkJAabaTmZK+cPvOXvscjpZYfoooOR/LeS0/9U/3NjqXa+5HIui2eQv7hULnnT
         EETYvn8dWD3poJxJO/0Q/7AR+TVa3xtIYzHD6k4F2CcmgQ7hlTop4jqoLrAOtcLRYZPP
         a+5tbxnEdL1xtH26ezN5ew2BfrKy3pWNugMlwfuR/I2Josn9KU2DWgFkos9/WoNpXHju
         dtFs0EAT1PwggPgfP9H2PQ40EFgzKQbea5LTPTUtw+cyzl8RhZjF0ps25rTdKeiCxRHR
         gLDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ka6vdQ2YYgJOmejCqLUlk4E508v1v6MQQiT/+zTD1o1hePSBz
	hT6V2ifWY8elr5gq9WmaGl8=
X-Google-Smtp-Source: ABdhPJx2Fx5KpdM7nb37kpBePR3+O7LJf+8o8kafNxxk0SFhMvtWSc0z6mCwxeWb0Nx0AqmAiR3F8g==
X-Received: by 2002:a05:6808:1281:: with SMTP id a1mr7143319oiw.143.1622234268594;
        Fri, 28 May 2021 13:37:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:310c:: with SMTP id b12ls2401936ots.9.gmail; Fri,
 28 May 2021 13:37:48 -0700 (PDT)
X-Received: by 2002:a05:6830:1251:: with SMTP id s17mr8728654otp.81.1622234268194;
        Fri, 28 May 2021 13:37:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622234268; cv=none;
        d=google.com; s=arc-20160816;
        b=w+f5SqzxP3n0J0MHdJsNxDMQcvFtNtCvhKYFvQcnkkmoiwl0+t2dfZsOUObTB7/ERg
         /YWbWz/99Ps37oleVnnnxw7MuHwJnCJZUtqOwZjZxBGCc6RPiuDG2AxpxckiJBMrIFmx
         XTDZmnKJq0baqFtIVFOW/TwC4JciFVaPsrhAcuekwZuA8OMnJ1WfmurQsMWQcoAEkVVT
         l2Da+eI9abjQpGp+Z7S5Wl1qoXKxOLg9jd2hgOLhoK+unbdcE96KXkOMVx+M+Q+6Te3G
         Wb7eETeg0FrXxGqYdAzagyYBUC6Q8Q8GEhAvkLmVdk0j5PpTDkGDrsoVpVf15K41MUgD
         3Lrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=b57glHfs/VujPKgiIntG2uc0YfkZvDSnGp8ktS9hi8E=;
        b=T6La8OyaRfOeUumCi51fdJlQroUUbzLCMBwVPl38NADhJqIc/ZwFG+DH1Uvq1MON95
         EnSfhdv3j4af5Tn7tc5wqIAEdOVICGBkthYWcdfjI76SF/4syh52qOm6JeQjWpbLvyu2
         3/7cXtzNys6KC9h/ZLOlDT3txmsXWPm1u4MCUtb+972htGMzmHOGVDYmud4/u0rqcdac
         x4EvIp8MdoRRRLdj8PhGolwZCl8hMuh5TQI5rQXZZW4SDZR8ZKUG9T6jOkoR+6Byjx7n
         OL1niUphnEBeEEs65heAF+czQdcfVoEYHPG+5uxKCyjurvF0yrP/URtcVQNPH/rpp9ym
         PPtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.44 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0044.hostedemail.com. [216.40.44.44])
        by gmr-mx.google.com with ESMTPS id a10si535945oiw.5.2021.05.28.13.37.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 May 2021 13:37:48 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.44 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.44;
Received: from omf06.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 6C38E8778;
	Fri, 28 May 2021 20:37:47 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf06.hostedemail.com (Postfix) with ESMTPA id F410D2448B8;
	Fri, 28 May 2021 20:37:45 +0000 (UTC)
Message-ID: <0a78bd39b9ef40114bc7527709a533143415f0aa.camel@perches.com>
Subject: Re: [PATCH 6/6] pgo: Fixup code style issues.
From: Joe Perches <joe@perches.com>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>, samitolvanen@google.com
Cc: wcw@google.com, nathan@kernel.org, ndesaulniers@google.com, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Fri, 28 May 2021 13:37:44 -0700
In-Reply-To: <20210528201213.459483-1-jarmo.tiitto@gmail.com>
References: <20210528201213.459483-1-jarmo.tiitto@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.39
X-Stat-Signature: 6wbnunbh3ar94pm7g95koecf5msryydf
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: F410D2448B8
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX18rjO0VftHNOo2CzdbAdYacbJQbxOtJvIs=
X-HE-Tag: 1622234265-802280
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.44 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Fri, 2021-05-28 at 23:12 +0300, Jarmo Tiitto wrote:
> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>

This should have some commit description like:

Do not initialize statics and use tab indentation.
Some would suggest this should be 2 separate patches.

> diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
[]
> +	if (start <= p && p < end) {

Generally clearer / more commonly written using

[]
	if (p >= start && p < end)

> +		/* vmlinux core node */
> +		if (&vnds[current_node + 1] >= vnds_end)
> +			return NULL; /* Out of nodes */
> +
> +		current_node++;
> +
> +		/* Make sure the node is entirely within the section
> +		 */
> +		if (&vnds[current_node] >= vnds_end ||
> +			&vnds[current_node + 1] > vnds_end)
> +			return NULL;
> +
> +		return &vnds[current_node];
> +
> +	} else {

I suggest getting ride of the else and unindenting the block below too
in yet another separate patch so the function fits in 80 columns.

> +		/* maybe an module node
> +		 * find in what module section p points into and
> +		 * then allocate from that module
> +		 */

...


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0a78bd39b9ef40114bc7527709a533143415f0aa.camel%40perches.com.
