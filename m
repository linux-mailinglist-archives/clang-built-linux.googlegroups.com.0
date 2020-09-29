Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBMVUZP5QKGQE3KVKAHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E25D27BD6D
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 08:54:44 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id p65sf446904uap.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 23:54:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601362483; cv=pass;
        d=google.com; s=arc-20160816;
        b=E/lGh4i1WylFWfQNBmws6qtlpoInGt9ofoDEOtfRHNaSbJNMMg8EW+R3qHIWSf+kLw
         S4sVAL9cWyLm/mlF5v/mixOWjT8nvqXG2x5bIaZSRbLPuYg27dhVE6D0uUysa7aHKXiz
         VwAKIIt6xruMzSCnK04PxQUxK84vrc1RkZH46b/7TGz8rbm78Y2XYqAJW8ef+Pm/mOfu
         eOmmAXIqo4LCIpXXIDu2JzUcUqpGFtGZ4+zGXgfKt1dyQ1Kdy3PQjDcq5Iz7W8CtXoyJ
         fV1EjzELE2WLxmM3ZrcMczY2xJGHMQb/6K5btlAC5g4ox9j+DhRHkhmau7OayBWu/6UI
         a2jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=P3IUt18b/VgRyv+NHHKbrHqgTO/e93L1vGvEIa+HZpw=;
        b=d7v9HQvdQtnDcMZ36dbfQIrnb0EQHkMGHX6Wd7gcLJ5onhoDQ1I4tD87Q713m1zUb8
         odcltngOfnlUan+EtAjcRPzV7w+gl+Fr+42CR7HW8W4FONPjgbbuUaa60gk1Pr6YuSds
         lX7f5PqB8ItxyyB+o4osgpwfWFrMM0Zm4Ey3TkAwpGMV+cWF9O1qzFmq7VRXuCyehJg8
         bPm/5T5FDYo9IwXjfJMsgjJI+jM33j51X+Rdp00zEqgkFYnFQawMqNma1YbOsmEUGMAg
         KajcZbHJT84nbdKrWudzq7Kz/5gYQ5y8aJ3dSiFahcTlQiIPdFTxKOQ6ysxGeIWG+EiN
         EiEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ITe7N6vz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P3IUt18b/VgRyv+NHHKbrHqgTO/e93L1vGvEIa+HZpw=;
        b=q9gBMfLNVHcqPAH6aHdi0xbHzFDQz26cBZCtOhzo8Su1LTDtLE3sOQ60f/Q9boyKGe
         bovxAB58lLM+CUNNvDjDBg9jxlimro7NmbYGWtHk1cfgBgLlwGTZBZK8uLc9YVtnL7pw
         BEZGjIVuzLXs9QXYdtfD91TYo5Siiot7RJ1zD9YTpKjom/ceey4d/pnBJZs9KjBH1xVO
         n/GZQLHrfvKoZrBoiS8t5wI+NbLJWpPuScDTSrHOh2HpxbmkWDOVwXHKpT5EgCJQ4WlG
         BOFxiIdDcZUqQI1SWoJ0WAMLWqPczE/LiYFf25zNd5d3gez5/Ikaq5FDzsbsb+uCtJ0V
         xADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P3IUt18b/VgRyv+NHHKbrHqgTO/e93L1vGvEIa+HZpw=;
        b=kV4gaRm4HyBJC8WTu+KViop2XCcmkmT7/XolcpfSRNDkqcAPU/BEQVmriB23l9lQsp
         hN6xSLk/NivA8DLi3LWmpQM4qzMhPpcUpeXfHWI9Wzg1AfQFQt7/QQB17mUAVRuOAfi5
         sGnb9/CNyV8ywG3SrHSRaNrrTLaWwR2c8zo33kpi36Oy1SsongX+flR+S+Iif1DUfKU6
         HNs30BuTGd8+YekE2+BWciQCjBopEqJ0F2vSIUe/ZJcIMpL10wK8J84Hf31blMcELiyN
         TPmeTUgchxvajcGEsH54r8b0JnKxkki7aUP4cjyrtef0pWYg/6+wcm7I9HJfTNY1tUwt
         c3tQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yZkP6vzb6KnaKxpllvP2BdrwaXSkQWQG1wwals5RZXKc6icoF
	gznJgfuY3dwH4rWFvLNpz1Y=
X-Google-Smtp-Source: ABdhPJys/gPNgspSDBOtSG5hIZl4zCVol3CFBhkxCuTHYj0oazIbpI2LTSrU+Q6ddBhj3xOrH2PnoA==
X-Received: by 2002:a67:6187:: with SMTP id v129mr1949820vsb.53.1601362483105;
        Mon, 28 Sep 2020 23:54:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c899:: with SMTP id n25ls213546vkl.1.gmail; Mon, 28 Sep
 2020 23:54:42 -0700 (PDT)
X-Received: by 2002:a1f:964c:: with SMTP id y73mr1909915vkd.8.1601362482635;
        Mon, 28 Sep 2020 23:54:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601362482; cv=none;
        d=google.com; s=arc-20160816;
        b=aIlzs0v8lpss0wVH1rvVA8WLMdwF6z29hm9UQI3I6EB7CadEvenTTPe3GCuvurthhZ
         E27e4PXl22q8y1CEN1ZkmUG8V1r3lajYuosepnXWM1PRKIGd+qfMrl3x0P1c0qgc4QMD
         3tMzO+SvRyvOVtBw8HMPkmWhBkV0naYekI9aeRoWnosnpVY5yBNM4Qk10P2h8e64hK2G
         4UfBds0eq7AdS7kQcCPWOgZ3vstyJGRRtiScFaSvHLvXrvBWgVlR4qT0hOSKVkPJlp5C
         UzlIKxuzwlYztEopE8jV4XOuqbg7ZqE9nyvTu5nvrlIk4T3gqEGSk8ZjU5oQZTL0ENvX
         bVPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=McEBuYsp5CMqBMSLYi4K/RGilkplsoq+eyxQBBDLQ4I=;
        b=To/qBjrc8jpPLbjgLDdlPnDLatki81TxSnf4z1URvOkgPylDcMlMjTJVl4LAXQx79z
         V6EJxDBwesuYYfO0ac6brCwLdRnSgcrXEPj8OmedAuZ9jtpbA1C+Mv3P/UmdotxRm6Pl
         eb5YZQ3kv1WyKkSyz8FKhIZq4RMcSLMtxbqV3Zgb9UHBR9bXY3JYUFcIg5XYIR4LmqQG
         8gbJkpysv34ZziqMrhsixsXkwssnleZu03c6moHAt54sSCHDvIlqjQAWJUP7M8eB8pkk
         KsAE00E4tTCV1nz+/pd/mt6t2a3epxJpVC0dXSae3uxuRNyW20AG5n1LQQkeAPDHSUeB
         UjBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ITe7N6vz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s9si289129uar.0.2020.09.28.23.54.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2020 23:54:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EFDE62083B;
	Tue, 29 Sep 2020 06:54:40 +0000 (UTC)
Date: Tue, 29 Sep 2020 08:54:48 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sasha Levin <sashal@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: lib/string.c: implement stpcpy for 4.14, 4.9, and 4.4
Message-ID: <20200929065448.GC2439787@kroah.com>
References: <CAKwvOd=iRhjy_3Ebzj0=ptKCSfcdaKe71n9Hs-KSkJTzxmRD-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=iRhjy_3Ebzj0=ptKCSfcdaKe71n9Hs-KSkJTzxmRD-w@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ITe7N6vz;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Sep 28, 2020 at 01:17:15PM -0700, Nick Desaulniers wrote:
> Dear stable kernel maintainers,
> Please consider applying the following patches to 4.14, 4.9, and 4.4
> implementing stpcpy, which is required when building w/ clang-12 and
> newer.  These are manual backports of patches already accepted into
> stable earlier today, but for branches which they do not cherry pick
> back cleanly, due to us not backporting commit 458a3bf82df4
> ("lib/string: Add strscpy_pad() function") which landed in v5.2-rc1.
> 
> Thanks to Nathan Chancellor for taking the time to backport these.
> The 4.9 and 4.4 patches look the same to me (other than the base).

Ah, I didn't realize you needed these to go back further, which is why I
didn't do it.  Now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929065448.GC2439787%40kroah.com.
