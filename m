Return-Path: <clang-built-linux+bncBCR5PSMFZYORBFPATD3AKGQEZJJTWIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 308EA1DC7D0
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 09:39:03 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id b1sf2900280oib.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 00:39:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590046742; cv=pass;
        d=google.com; s=arc-20160816;
        b=AQjv862WJeCsrEgXCrv3wuReh9oDp/tBAWsFMQxg2MKckyffZcqEzIrvsPuBI2UusB
         lNqG8hEyZg6K2xAZUOOiKkk8P8yUBKQ9mTJI6zoBgxo4D3dbc6aSlyEIHCZb0pAMoIFn
         s4xHb/RA/Hg1vIXB/adTp2MdMyc0gYG7O/88iFHh6TGpnS7fwjqKMPzrxowVDZje0Thg
         TxlkzZx+dnegP50q+HlmftLsetqZeS0HMrqm5hT1HZsKvMbdLre/L15rPAJ88CZjjZG6
         sFe48To+M73JjUVgZjginzS4TtqpYRuYAsUKJOKrgzp+w8x5fubxQM5RzZ1Ksa0Eh2jJ
         zmhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=/hEHwdxs0k/sJ+zvLUgn4rsvVkMHpN4JV0hTHcwpdkM=;
        b=V8XVr4IISD0iBQAb1c2v08x9IrpGStvR8XqCzwuG5ziPgTmgfSs7FX0JbiD67+t7BD
         DDebWQ88eBy/ZWoUCEDhpJyWLcUTrRCY968rOaIuJXe21Q/DxLasf7S3VI8I0FpEt+0N
         V8redF0/Ac9dLAxmjTTbjZ/2n0psE1cm/GqIAu6ZcE1b+cymj6LvTJADzX7cVOQfIQtG
         Psq/ldOqqib6FN3cDteh1nWdwYD2KQ3/bzn1OjPKXr4QGOZbI84WHZ7u+CdD57X1ZFdp
         DIChl7kK2J3HrHtYycIuGmP6gDO2gG6RnCiLjV5kW3qI9lFGRoEDRk8ERdLQuSCEseGc
         GLnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=J1Z4F9XG;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/hEHwdxs0k/sJ+zvLUgn4rsvVkMHpN4JV0hTHcwpdkM=;
        b=pMvoPraHNtWt5hhZrVHVwMhAayG/yDv/3fvUNK6+VjCRskqfNdCrlKZMVWwfLi0+N5
         OWWsdbarY/prXtZN+rQ+tW7IL0faabfqavzFKCwyHAJMp3N3taVWf/lzIFkP8ts8IzLE
         1X4KOoJRVPQQne4sstDkc+qTwPEcuXwDzM/vdlP1gehMGmGxkM4LKNe4oF8FZtqvHR9y
         2HYgqDl7VZj0vnQgqDfZQO716S+30wHsaUb08nUjbDoW6mZeLnBLoq3+GTYWf2/5tVNB
         DNEH0WWLPOt44y5vXdlPNundx06lO2fanr0wxosGOxFFYhswQgdrIIB17cZZHgF79fNO
         7J0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/hEHwdxs0k/sJ+zvLUgn4rsvVkMHpN4JV0hTHcwpdkM=;
        b=J9G6i/54XpRXfLOJGPHzsH+10v+kES311eULqkmpWS00njolugGNitDatHXlLWMNWy
         9foauMGUcY6GnFchfKN11v5v1rqMd2Kz4OnfRCK+kUzu7TDB34eNm/hsC8ufbwf84Dd6
         nLbpbuZVTaNfkEdv+iTV9nos8uMdDu3Xw28xCaMySekZazxxss39CRgfL9tgD8kh1OTw
         zPgLEYxhq29vX4OJq8dFuO+G/BSlKtVckZ9niQXT3pxbPnZ+RicshG9XKcATz3Fcrh6V
         nhBSq1eV53t9fIvYm32/shHUUtJc/9iACOUR/sKSYrYUDfXui2xzk6aImyLnNagAae92
         6ozw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pE2Xr1/wGu4Bt8bT6kQ6MlGFzlRj/A1+pu+mRQ9pWJzJWqK+G
	1CojoGa8w6S09JdldSexAV0=
X-Google-Smtp-Source: ABdhPJxeBrzyX/4ptEuFI5ran7NVVyey+NnAt6+Mdf1Sh8D/khvy5dxEbclL2a3tuBP7zOsuxSADcw==
X-Received: by 2002:a54:4383:: with SMTP id u3mr5498210oiv.8.1590046741867;
        Thu, 21 May 2020 00:39:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:61c2:: with SMTP id h2ls288931otk.10.gmail; Thu, 21 May
 2020 00:39:01 -0700 (PDT)
X-Received: by 2002:a9d:7acb:: with SMTP id m11mr5934050otn.301.1590046741484;
        Thu, 21 May 2020 00:39:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590046741; cv=none;
        d=google.com; s=arc-20160816;
        b=ER/+p6TzvqHm343suE57H6CzwIOfVrcLJXTQwFp0fikqA8p9wQz/9oK3fk5DMs//8V
         6l+vTVwM/WmBd8zl9xCPT5CNypKQecaDJYwXQfG3/sIxPNdtGOS3RFXThNBnLR3QHF5o
         h4YSHsXHTWMyFNcIJhJrLvsaHOsY5AzGncsw4WA5GBhNI/P+g8IC5H9h5NY5G9Uk7YKM
         fArKTSXsgz89EH5Mm0Z4E8qKPVxU5nbgKIv2m7Hy2Q2/A6nAUghc4Lt2vlsosu8FEPA+
         HYEeWpbgB7n6d3QruTtuMRLNzqN/G0mWurop3gYY2Vjvx89aSg5uFq9MlMKwf+r3tr9T
         o1VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=qWX/aTEjk/+qXntCOHZvcL+CfAuO+tYaNsSsZ+xbyTo=;
        b=gyevWaavNI1td2bmbx1k2oO/ydJt4kqM/yBH9gOM85siYKK7nTujzl689wAtcqRYI/
         RPcLPVeSxdCWg+ia6w2u2AozgDynpZvzvKD1L4EHvNMsXaHlZOC799emqmrQw5XU9ZC/
         LHdvRhQH4zXLNDqSRudOawp/QJg9WRkgYjhDZgZg0TcxRQWzanZeWmRfrhXPuAKEhxS2
         9acEc/sBqbnfnGBbPAeejp5cvF3bFkyo7SJYmVZ+wIKr5GBTRrM8em5sU06avBNGkaNX
         42/jQFVUrA4KgOMBqRK3Zgkspo5hSNCFDDSm6sU0GzEiRRb2qX0o9H9eI3Y2tkEP3MPK
         CBXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=J1Z4F9XG;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id u15si512170oth.5.2020.05.21.00.39.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2020 00:39:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 49SM1p0SX0z9sRK;
	Thu, 21 May 2020 17:38:54 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: linux-input@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH] input: i8042: Remove special PowerPC handling
In-Reply-To: <20200520171618.GT89269@dtor-ws>
References: <87a7254bxd.fsf@mpe.ellerman.id.au> <20200518181043.3363953-1-natechancellor@gmail.com> <87ftbv87i3.fsf@mpe.ellerman.id.au> <20200520171618.GT89269@dtor-ws>
Date: Thu, 21 May 2020 17:39:13 +1000
Message-ID: <87wo557n4u.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=J1Z4F9XG;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Dmitry Torokhov <dmitry.torokhov@gmail.com> writes:
> Hi Michael,
>
> On Wed, May 20, 2020 at 04:07:00PM +1000, Michael Ellerman wrote:
>> [ + Dmitry & linux-input ]
>> 
>> Nathan Chancellor <natechancellor@gmail.com> writes:
>> > This causes a build error with CONFIG_WALNUT because kb_cs and kb_data
>> > were removed in commit 917f0af9e5a9 ("powerpc: Remove arch/ppc and
>> > include/asm-ppc").
>> >
>> > ld.lld: error: undefined symbol: kb_cs
>> >> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
>> >> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> >> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
>> >> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> >> referenced by i8042-ppcio.h:28 (drivers/input/serio/i8042-ppcio.h:28)
>> >> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> >
>> > ld.lld: error: undefined symbol: kb_data
>> >> referenced by i8042.c:309 (drivers/input/serio/i8042.c:309)
>> >> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> >> referenced by i8042-ppcio.h:33 (drivers/input/serio/i8042-ppcio.h:33)
>> >> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> >> referenced by i8042.c:319 (drivers/input/serio/i8042.c:319)
>> >> input/serio/i8042.o:(__i8042_command) in archive drivers/built-in.a
>> >> referenced 15 more times
>> >
>> > Presumably since nobody has noticed this for the last 12 years, there is
>> > not anyone actually trying to use this driver so we can just remove this
>> > special walnut code and use the generic header so it builds for all
>> > configurations.
>> >
>> > Fixes: 917f0af9e5a9 ("powerpc: Remove arch/ppc and include/asm-ppc")
>> > Reported-by: kbuild test robot <lkp@intel.com>
>> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> > ---
>> >  drivers/input/serio/i8042-ppcio.h | 57 -------------------------------
>> >  drivers/input/serio/i8042.h       |  2 --
>> >  2 files changed, 59 deletions(-)
>> >  delete mode 100644 drivers/input/serio/i8042-ppcio.h
>> 
>> This LGTM.
>> 
>> Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)
>> 
>> I assumed drivers/input/serio would be pretty quiet, but there's
>> actually some commits to it in linux-next. So perhaps this should go via
>> the input tree.
>> 
>> Dmitry do you want to take this, or should I take it via powerpc?
>> 
>> Original patch is here:
>>   https://lore.kernel.org/lkml/20200518181043.3363953-1-natechancellor@gmail.com
>
> I'm fine with you taking it through powerpc.
>
> Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Thanks.

> Also, while I have your attention ;), could you please ack or take
> https://lore.kernel.org/lkml/20191002214854.GA114387@dtor-ws/ as I
> believe this is the last user or input_polled_dev API and I would like
> to drop it from the tree.

Ooof. Sorry, you are very patient :)

I have put it in my next-test.

In future feel free to send me mail off-list, or ping me on irc, if I
haven't picked something up after several months!

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87wo557n4u.fsf%40mpe.ellerman.id.au.
