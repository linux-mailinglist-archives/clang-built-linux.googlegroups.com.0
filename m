Return-Path: <clang-built-linux+bncBD7ZDTFR7QFRBV4AYXVAKGQE3ZRIPZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id DF54B89B87
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 12:32:55 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id q9sf8793201wrc.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 03:32:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565605975; cv=pass;
        d=google.com; s=arc-20160816;
        b=S4+4Z83JE9RctN75/mpmpi4qmGI3QU+FlVTPLmsvvZrGDk0i9YQHCcAVyoKF+COmbf
         ZWBy8dwPj1WQj5nSGkVhSewtuNiJqGjSdeCdTjH448iVL2PtM/GmBNQh98rQm3kaHRtu
         QYRCnE6++2d2sQtp/Rttkyu4nHFiKcBAMTGtwWDojjC5BEBbsQZV+mSiSzSZ8IKgnoyC
         LfnY/GVnRUIY0ltBL8Aq6lSUtcvF1J7TXUSYRxNdZiL6nghC4LYCLeO8GpOZTOzr1aJF
         Flsakt+A+02MzLtVFAjFFQWUl0zXgmelp4pAb7bwdNXIZKlEBGtLA5nyhqN49xuhA1a0
         QVSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=JEqDtYLMGQETwhPplpMnma+c0iVbVbXHggX8V1uv6Xk=;
        b=T3BRS8eiHLVGC0+vJVvk09lJ1ObFVb+0DC80ZiZrVR5QF1Pe36aKC8OjwOto5l5SfT
         6/PX7E6X7d20HVvqkn//klWzMX6Usv4Nb618oMSncl3ANR6tgWQ87zU/yliuivOo/UGE
         h8J2gV0HST808ZsKpSdlJSDvvYs1sWm/o/spe8MXlfsnQzHCZpAa/F0x3JQyIS8yKvRc
         BmktB64fAMcohuE1qlEKGiO/Z9aEGnpGnfr+PeqpQkIpe5qjdeSC/cy8O2JygI9Ag6bq
         2gdr543EVGBMO2KTS6hH9v+8Uw0LG+PaU36DotnEvnB4gYUhMeIsU6cWPp6RitgZkhhN
         vZ9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of sudeep.holla@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=sudeep.holla@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JEqDtYLMGQETwhPplpMnma+c0iVbVbXHggX8V1uv6Xk=;
        b=czFRkKLyRrXycOzQK27WDPOtog1ROEShK47kOHml3+KSlVS9yYxmgeeiasjUJrv0bS
         3LTbppqiGaOa7wfeSurXG0N5mfRrVGn29PCgTigiBDlt8VS1w68jTTJx9cYsjiQiuwUq
         oPMd8rL+5+kgaE/j/rVN6gk0BFkQI+ZamXqEforTjc7h+HC87NJFK9loXdvKfNGJrhWg
         rh09E3fcJ/sCPqmNbh6RMZ9gTNP2cir4elGQNYKPTPJ6LqJSldvKI3vEeJX0c3MhP2kt
         fJCea8ChWOm4JJNPFl0aStaU+wd1ztZPtOdS07htgJDv/gdqrceX7bgwOeMNDbOoJ+kj
         5BXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JEqDtYLMGQETwhPplpMnma+c0iVbVbXHggX8V1uv6Xk=;
        b=duEvRUZhbwgCTcJG77iSUmz5HhtEi3I3KUSU1whl1srG58X1aMpCrNSwPvpgKhgh9d
         netqyTAMlYolKdY0NVh8F9bGVSXZF6oEHy59jECIaS45HeKMvD2raU/bUNX8onJnvDql
         t12Jnn1f+ewK01zmPg243MYdOYpWBoE8/+GlLbeSnro0ySysi9uiQnHqfgRzAHd60vdA
         2zm2aSQAn19tL6qKgGtAz6mCHOL0CPdq8TfoxvCbrxgXCdqiOrqi5qnhi/84pU/9bQRX
         4fen4xq/aWE6/EGeTL6JzJXr4zS1bPib0xqGfWHEwq9zUtzxkpGN04qJ/KtNys6xXsbz
         A5gQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUEMTHsa6sP4Q0VHaSk4y/RdOW+leCqj84IHDAEfCg9nxeMop1K
	mQUDS3t9CA4KfUozlYKBGWQ=
X-Google-Smtp-Source: APXvYqx/ZLb60soTLOrb9j7g0RwabulRNfcHqVe3oq+geTKMYLRbs/DVv9XRxh7A36opEM4PLpvHQw==
X-Received: by 2002:a1c:d108:: with SMTP id i8mr28308201wmg.28.1565605975655;
        Mon, 12 Aug 2019 03:32:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9321:: with SMTP id 30ls30143232wro.1.gmail; Mon, 12 Aug
 2019 03:32:55 -0700 (PDT)
X-Received: by 2002:adf:fe0b:: with SMTP id n11mr20862076wrr.243.1565605975258;
        Mon, 12 Aug 2019 03:32:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565605975; cv=none;
        d=google.com; s=arc-20160816;
        b=Kpakzz27+h5Rkdo7PAeEfStgbJ8WeSOK/PO1UcZrPk4sGDBOnavvLTCiVVO2j+jxru
         ZOmu9rDGp74GDfKSZvnwFz1fM+cs4tk1coFmE1uDzScI22RIwoL9OTEQzGpOfAP0Xpop
         dTTTEBC5HoziQsMK6bXUx5NUW/vdvR3nLDwYEWg+kEHP4uI3xoyOm1To9K5NlB3KIN+Y
         WVIP8pezOaPJ097IVyNbpWibzbuf5vzKF4d2RYeLfjHhZF/M4w1PURkXxabNuyQA+9jZ
         ATdCujTsqavZUyKPPoRG16UJ47A5cOqA1p2sN4tsY3xctXwyR71yklt1ZPfiZH+QqYSJ
         0iEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=YS04/o37ZfcdzaqlfioLF9nz4WiLLD2csugz4P3/N00=;
        b=uj1Df/0GKq7tyfyq/TpZdVb1/NYLoITmWC4QRjLtipBytr6eAEgAvPpIoFk1lJ44HG
         j0Pt514+xfdW0doYgk4L14CxBuUPGpEQaKrzBj+qAa9+Ji5FpyZD5rgkdv4UdAcKcVid
         VrimT6UBZv2da6E0pD9uqCcqTlrp30uihuOAtEx8gUKYgLmSgrYiKmhaHNyXguiL+kJ/
         hDamV0vKsxT6Baiv4pFHHGGcbGH4qojo1/G0zRY2DAmI5AL9ofUy7ecypgyXRj8Yb3cC
         kglstAlNdIi19FyqJyCM3714MhJG4Oyb6fHFgX4IIRMA3Sbscqgw/DzA0UQR9RmHxQ2h
         8VEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sudeep.holla@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=sudeep.holla@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id e7si569296wru.1.2019.08.12.03.32.55
        for <clang-built-linux@googlegroups.com>;
        Mon, 12 Aug 2019 03:32:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudeep.holla@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 53F7315AB;
	Mon, 12 Aug 2019 03:32:54 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A1D193F706;
	Mon, 12 Aug 2019 03:32:53 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:32:48 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] firmware: arm_scmi: Eliminate local db variable in
 SCMI_PERF_FC_RING_DB
Message-ID: <20190812103246.GA28585@e107155-lin>
References: <20190810044910.114015-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190810044910.114015-1-natechancellor@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: sudeep.holla@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of sudeep.holla@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=sudeep.holla@arm.com
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

On Fri, Aug 09, 2019 at 09:49:10PM -0700, Nathan Chancellor wrote:
> clang warns four times:
>
> drivers/firmware/arm_scmi/perf.c:320:24: warning: variable 'db' is
> uninitialized when used within its own initialization [-Wuninitialized]
>                 SCMI_PERF_FC_RING_DB(db, 64);
>                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~
> drivers/firmware/arm_scmi/perf.c:300:31: note: expanded from macro
> 'SCMI_PERF_FC_RING_DB'
>         struct scmi_fc_db_info *db = doorbell;          \
>                                 ~~   ^~~~~~~~
>
> This happens because the doorbell identifier becomes db after
> preprocessing:
>
>         if (db->width == 1)
>                 do {
>                         u8 val = 0;
>                         struct scmi_fc_db_info *db = db;
>                         if (db->mask)
>                                 val = ioread8(db->addr) & db->mask;
>                         iowrite8((u8)db->set | val, db->addr);
>                 } while (0);
>
> We could swap the doorbell and db identifiers within the macro and that
> would resolve the issue; however, there doesn't appear to be a good
> reason for having two copies of the same variable. Eliminate the one in
> the do while loop to prevent this warning and make the code clearer.
>

I originally had exactly what we will after this patch applied. I think
one of the tool complained about argument 'db' reused in the macro
might have possible side-effects. That's the reason I moved it. I will
dig it up and fold this in the original patch as before.

--
Regards,
Sudeep

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812103246.GA28585%40e107155-lin.
