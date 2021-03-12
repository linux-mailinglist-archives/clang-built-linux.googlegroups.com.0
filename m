Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB272VSBAMGQEXC4YDKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CE96D3389A5
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 11:07:40 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id v62sf28789858ybb.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 02:07:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615543659; cv=pass;
        d=google.com; s=arc-20160816;
        b=fp2hrutxz192Mtl7zYBMxzLkDG9uf6Ei/HlnnEYvBBYsbD7mLucAHO7azU2uQHOKIJ
         fEqukMeHkzOyGsAoNWLZ3tP/kvXkrUkXBQ3ONcTJCPnZjkZnnjKyI+d7tPg+UmQKKPun
         WhbR7nVy9Vhtls59+nUi/GkmMMUcBrC1Cz/bXLCLEfRXue3tMx1PvTlKIY1YcBRLnNhz
         5qOYoOw71wyj7uNslDwWtsYiTEplpXvvrpAeQRQ9zhDuStf7ZVyqbWJU0tElhyWgtJdk
         uksj85eKRsARIcK2dTF2NflxoCGvOqA9JiolrkuEM8l9Xr4vauniYNGxa62Y6kLKpjbt
         4wjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zEgwLmGuAVI9SmCf88035EFvah7H6LmwMZ/KKsiLkbk=;
        b=i7IWWUEsk/MipNYFjhjS9FbOpCFNEKAu46leuaRNoxrd9bw6yBLdADVQVhXNXVoJG6
         az6Da58/5OZcNpQUOHre7BoZSKXhaNPvUBQY0WP48t0jseFdkkxqyvAd/JrsfR1Ag40J
         3lNmLdBbMlffcjfkGwwcuCVK7GYdd8/KSEuoezWHng5immX3q/IRw+FYtHeXotAe6onG
         rVJqcAtZq2IU8LmQ5iNXxZ9AJcXVhtQEM6PEFnfoBB0zjBdgHQ9B/jajrFq0k0h6ueRh
         vbXOJfeGzRLQoWpZVOrbr2VORBL0ORv/QdiCnxbl/ejywmt50WezfgUuCzPSayEBjZSV
         YwgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="N3jc/5CT";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zEgwLmGuAVI9SmCf88035EFvah7H6LmwMZ/KKsiLkbk=;
        b=SzXf13b9uO844dkojUuDBGGl8sz5MT6E0MbnShmNv2hX0i0jNhJ2HaUJYkDh1zwWVm
         U/EQ2udU4YypLECNeCrvGepo1KLYAT4TERw96tuITtAqHD7yONXR+RkaL8tAAjF/2G33
         uTlrcmrnT8bXUsSTDkFPFGeFD+d1rdgBxNy0GOu09Kfii7bS9WKI2R0pu11W545ts1eS
         UIVr4zYyFUFoUorcSiuh49eyoP9h02daogbvkfS67aSFzwg/7Kvw/umbYzxFVREJQKSJ
         QLQBKtwyb2HzIicDz9CFEtUtp2UPijqN5Aie2PY7nehnubDo4+/9KNNxHr85bKWzY28r
         FmOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zEgwLmGuAVI9SmCf88035EFvah7H6LmwMZ/KKsiLkbk=;
        b=trb2+h1kEZTvp/lXbH3M2EuUYLsdXuup+zc5n87GM+OP2t6+wcva6AJWUQ5fWmC/IK
         q+6qGamGuZ6PCDW1tMbuUwvpovJcad/PS36WVcE707zoKSaDMG6yy8mZy1XTUyERAxD4
         aGCA/WY0kFqHG/KpiH11ICE0xPqAxi+qISETP6v0Ntnu8wHzADa0rtYV6fkm98mkTZ7m
         WvFzOC8z60gYvehrmCed0gyzZuciFadZN4HyQlXDDQrnebe6MZIhG1bOxiK94xCNSob7
         u7Of5t/3covtDZfe4xevy6uEU4FtPnV8SUqB3n85WjFbzaewz/zXEgG64WR1clZoBOSk
         lDWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SLKfM5hJu8au5jab9fYWTGh7U0n/+zvyyaksabH7d6/ZU3nOx
	1Q/M/YysbSZPBeeVMgelJDE=
X-Google-Smtp-Source: ABdhPJyPiw7CaZiyk4kh/pJMURtSd0B6pXg1uh1UbyOotmVtAO3E/64N3W+kf5IazPxv9MBOm4CXeg==
X-Received: by 2002:a25:d08d:: with SMTP id h135mr18198554ybg.122.1615543659613;
        Fri, 12 Mar 2021 02:07:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d8c7:: with SMTP id p190ls4111993ybg.6.gmail; Fri, 12
 Mar 2021 02:07:39 -0800 (PST)
X-Received: by 2002:a25:686:: with SMTP id 128mr17529252ybg.258.1615543659076;
        Fri, 12 Mar 2021 02:07:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615543659; cv=none;
        d=google.com; s=arc-20160816;
        b=AJCWBoUljFH83S0SzWO8fIincQ0Vi5XufOR5C/bWoq+sIUBPIv37HkUNHiBW/I8LWR
         dNHo4T1vBuKFCnuq4vAOWiUiBeu2CShMRm0pNLkGFRLwJpa7jUDkYl2VoAI98ne9/GHQ
         l0U9j5zu5aerw2QiGc7878anZtY/pnIn1oDEvFDApwyJAfUTX+zNRzV5r8ni4+aIeKqX
         KZv/o1ynsdCLBIAw6JuYmpy5cDJHTMgqu+QdEh5zjfWXPpXiN2E7bImIiWM1jeti3OIf
         t+qWMb3GsVIieLmqNKXVn2SxBdwaCvAY4miNQMs9FmkadQHiin9jsFkAf9E+MDeFGNCR
         KXbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jmzlt1KO3qIry1Uxk/BnGDAo6dsEC6mbHIn5jE6KoRQ=;
        b=FrlwdahEIXdmNsHKc4KLYnK4w4egevcixb2QM6VQ4t7tYu6AoUAbZlIwR5ZlrMZV4l
         RwLMnJnLH5IEgLqAjcqXKLo6bxhubAq87mWfroRha0yPcUt8+R2jJDvywsP3o8DTgyyO
         Co8Ivo6+zWBDrVmamXpjDGnv3//AkwGmd/aZ44i9MLTGdTHWEYrwKrMHRc1n8R6LpqpF
         AvhqXw3fYKldOtbnwURSXjLeiEu1OI6D5a9mOSCtql/ilVVihaD7rKAWpZNnAp8mlVFR
         Zi2jg+1e0g1s9ACnumPNaNf91ODyIBFGBsuEWCYtEx09r14W+E6kWElovORX+2vBL8MA
         J0Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="N3jc/5CT";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l14si440415ybp.4.2021.03.12.02.07.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Mar 2021 02:07:39 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 89D786500D;
	Fri, 12 Mar 2021 10:07:37 +0000 (UTC)
Date: Fri, 12 Mar 2021 11:07:35 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Manoj Gupta <manojgupta@google.com>
Cc: sashal@kernel.org, joe.lawrence@redhat.com,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Luis Lozano <llozano@google.com>, Jian Cai <jiancai@google.com>,
	Doug Anderson <dianders@google.com>
Subject: Re: 9c8e2f6d3d36 for linux-4.{4,9,14,19}-y
Message-ID: <YEs9Zz9oldcbDedI@kroah.com>
References: <CAH=QcsjHmWdLU6u-imNYWU2v=9ieP8bOk22FLERUd+rVUeqZNw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAH=QcsjHmWdLU6u-imNYWU2v=9ieP8bOk22FLERUd+rVUeqZNw@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="N3jc/5CT";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Mar 10, 2021 at 05:09:30PM -0800, Manoj Gupta wrote:
> Dear stable kernel maintainers,
> 
> Please consider applying the following patch for 4.{4,9,14,19}-y
> kernel branches.
> 9c8e2f6d3d36 scripts/recordmcount.{c,pl}: support -ffunction-sections
> .text.* section names
> 
> It is needed to fix a kernel boot issue with trunk clang compiler
> which now puts functions with  __cold attribute to .text.unlikely
> section.  Please feel free to  check
> https://bugs.chromium.org/p/chromium/issues/detail?id=1184483 for
> details.
> 
> 9c8e2f6d3d36 applies cleanly for 4.14 and 4.19.
> For 4.4 and 4.9, a slight changed diff for scripts/recordmcount.c is
> needed to apply the patch cleanly. The final changed lines are still
> the same.
> 
> scripts/recordmcount.c diff for 4.4 and 4.9 kernel.
> 
> --- a/scripts/recordmcount.c
> +++ b/scripts/recordmcount.c
> @@ -362,7 +362,7 @@ static uint32_t (*w2)(uint16_t);
>  static int
>  is_mcounted_section_name(char const *const txtname)
>  {
> -       return strcmp(".text",           txtname) == 0 ||
> +       return strncmp(".text",          txtname, 5) == 0 ||
>                 strcmp(".ref.text",      txtname) == 0 ||
>                 strcmp(".sched.text",    txtname) == 0 ||
>                 strcmp(".spinlock.text", txtname) == 0 ||
> 

Can you provide properly backported versions for 4.4 and 4.9 so I can
apply them?  Hand-editing them doesn't really work well...

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YEs9Zz9oldcbDedI%40kroah.com.
