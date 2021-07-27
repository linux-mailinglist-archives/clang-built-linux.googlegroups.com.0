Return-Path: <clang-built-linux+bncBAABBEN576DQMGQEENVSHKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5E13D72FD
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 12:23:14 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id p17-20020a5d9c910000b029050b6f9cfe31sf10835612iop.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 03:23:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627381393; cv=pass;
        d=google.com; s=arc-20160816;
        b=NGyLizDMtZP0KUxi0C/yet+W3Yy+/P9YId+6F4ngiV6LjFeVwHZIFICCuvrOwkULdM
         6JKxyF6cLq1NmHr62COiOPP1VJkyMM3CrAjsaJswOSO/10QT6koVMKtXWKcFN3s6Qez9
         Bys1BLjfw3ayvcziNkRNbZgIMa+yY5+ZSxm5ws4MWYiPjT/E4PZpYaOca55Cy2XCjSTq
         NRXYkwIMV+3rXjKI6lA+10mWnxWCKtUtg5Vd/lvXJ/nyyRkszH7S0EfTcieGJlFG5Jf8
         3Ry/Njmf8ruz8z4ixJfYHXFSwZVw1DgH9tmw3t34b9LIEOvuorXyexzdf+aEHIbclkm5
         cYPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rakeD/+su28ajEOjvAqTEgQ3beLKHqXij0sYddn2WFo=;
        b=UV53tmrElEWuD7NxYpBWTJqysa5mKXyH+D+BzvNWPdebfPCWbmFUdI3TwDpEsicX9u
         mI6i398UOr3r7bPFQ25Jk/QUunbs1eJqTck6GJjXEJAtMS9iHErDp9WYNbpDHCEvcpV4
         FChPSoE/NufqG3Lwil/S/qgErGp5fJyOjrpybCQoMHZ0QukgVQAmXrfrDfhgk0qEru6V
         UziIDD3HuXqDovBpru28i+AOy4dsZ8gkF/D5wgnMy2FUqhEqPvP2iZM2c9Yg5TmAcSn/
         F5wPY9QW4ACDZ0rbJ/8/C5xPuYTv5phE/kFgUuHZYIRT6cAD0LU3vHGI7KBKWIXDtQPN
         yMAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kyB1BlKz;
       spf=pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jikos@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rakeD/+su28ajEOjvAqTEgQ3beLKHqXij0sYddn2WFo=;
        b=HCAxYX+qFRCj4x+tjmuyA3799igDAZzNKZTQCMhcYfaY2iUULb846Yzx5NkbMepcAw
         hwcPIuJuVZ52pbRwZZicr9FG5E4oxhFSK92qKVrI8IIyvUQ6QzDbhw43bXzrH1FqxCKw
         TQTcCbqmnVJQ1zda2nTZM4QugH2LSgMqeYWgArlTx9ErlXBEc8zFo71EKnc3uvg+7WqY
         jbfJOMCsU9fMzBoR2+ptjtnruKuNNmHON6G2FRD3zRKQjOp2NVJbGNClsPt/ieaHl6i6
         WYVnP8E42wh6Fd2yjBcicMovRf5JjO6Odeq22whCpTLhtsRv75kQ/f8kQj/8CtehG9vx
         R4jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rakeD/+su28ajEOjvAqTEgQ3beLKHqXij0sYddn2WFo=;
        b=qmeifiCQAXr7GN6qJ32ots4dZWbT3qXtxrvFQ4R5VwqzaiPnGWBO3M1n1ARVaYcTNH
         jMzgkJ9jpCJIaQMBk6duFPGqpFHdihd8tpcCQf4kBbLuJubWTC5iCJkGvPuJ0jbSsyUu
         s8s2KIyMFWfJEtq1HdpL7YS7u5U53flHC6hs8RQmR035QuR6A3stVX7xm7I1nt2bkY2s
         uE5V6zcluE9V2ht/9JuhFh48nounYBZnnwc11hOBCTMy7PdcUi+E5TltWQavaSz8jexh
         T/Gy7E3RYO8cqfNXeeqqIb+V5lUcJhgx3GDpBT/Djp6NW+Q9/1gE33mEpR+9jkx3QtEb
         AUUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jxbfDi8+jGu+9s7ot6D9yhlZoXSDNHkDvladxfzpXHxuQnLbj
	Ks7xWNlpcfJyKtEDEUy0Q0I=
X-Google-Smtp-Source: ABdhPJx5QTmamCkSDCRurshEMbHdpA8N7dMTIQgTRYfxgeRregi7+k/BTk0iKTs0iz6YeUavFggHxw==
X-Received: by 2002:a05:6e02:1d0f:: with SMTP id i15mr15121574ila.199.1627381393397;
        Tue, 27 Jul 2021 03:23:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:910b:: with SMTP id a11ls3604800jag.7.gmail; Tue, 27 Jul
 2021 03:23:13 -0700 (PDT)
X-Received: by 2002:a05:6638:3796:: with SMTP id w22mr20610132jal.34.1627381393154;
        Tue, 27 Jul 2021 03:23:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627381393; cv=none;
        d=google.com; s=arc-20160816;
        b=hAoweSgu5JtNc+jTHJ2rAKwG4M8WF+CJAYkHLT9Wq49ys5RCzPEytKLhI8mdq2vj51
         Pj6meqZ7tzypqhVyjPMkebcCQkMtIAdHw7g+0WROcxiyP2NfJz0gEpkqFVH7Al8oFOCk
         mve2bU/Tf5xj57EOWXTI83toi9OfcK85Th/Ey7+HEU+cOi1xLobWfbu/DKWx+Bp/fvou
         F09rd84a9L5xpWneSkaYXaPBCjLoSB05jG+lz8PG6FRIOgRqwAWYhxFpy2GdzFm9M5NX
         5B7P2qji/clYS4FNx/A2n7eQiVPPhsfakuPBJ5nGm0NzmbC7NkXrh/iVH8+eMVVfgFQP
         tVcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature;
        bh=lA83aQlptvreC0DuguaatUMBoW10EZ0Sliq87p++N8A=;
        b=uPOkgH8PE2jpxzbUDMDC8iMTUM5/JV/Dy13H/GhSCf/wjB66KtLdlWpHtukMawot4h
         CbS+KgPbS9maMP9gy3G4Lpm33PpvlTNdCqR0p7SRVyVtSeFoSodtcFHNr5OaZqPdMlaM
         6yx2flU7kNaMyY+nY9WJEBPFU7Y3NDIqiAEIGKEok/jMlC1TZ0mFDd1IseZ77kforDyw
         1yaQbQaeX5rpsSVkYPPpPqvq/uK295wiwpnmRdvblVTSkONRlH2kottKSNw7QZg480e5
         3YVG6YAUvPvMvuIqTZPwm0ufuNi0p5drPo7v3gY5ESk8lN2ptSQvlKkP4kLQxQ67HMDQ
         0BhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kyB1BlKz;
       spf=pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jikos@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q5si210108iof.0.2021.07.27.03.23.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 03:23:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5D279617E4;
	Tue, 27 Jul 2021 10:23:11 +0000 (UTC)
Date: Tue, 27 Jul 2021 12:23:09 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Michael Zaidman <michael.zaidman@gmail.com>
cc: kernel test robot <lkp@intel.com>, clang-built-linux@googlegroups.com, 
    kbuild-all@lists.01.org, linux-kernel@vger.kernel.org
Subject: Re: drivers/hid/hid-ft260.c:794:44: warning: format specifies type
 'short' but the argument has type 'int'
In-Reply-To: <20210726090937.GA46429@michael-VirtualBox>
Message-ID: <nycvar.YFH.7.76.2107271222500.8253@cbobk.fhfr.pm>
References: <202107261104.ChOSQbNQ-lkp@intel.com> <20210726090937.GA46429@michael-VirtualBox>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jikos@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=kyB1BlKz;       spf=pass
 (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jikos@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 26 Jul 2021, Michael Zaidman wrote:

> > vim +794 drivers/hid/hid-ft260.c
> > 
> >    784	
> >    785	static int ft260_word_show(struct hid_device *hdev, int id, u8 *cfg, int len,
> >    786				   u16 *field, u8 *buf)
> >    787	{
> >    788		int ret;
> >    789	
> >    790		ret = ft260_hid_feature_report_get(hdev, id, cfg, len);
> >    791		if (ret != len && ret >= 0)
> >    792			return -EIO;
> >    793	
> >  > 794		return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> >    795	}
> >    796	
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> The fix was discussed and submitted on May 10 in this commit
> https://patchwork.kernel.org/project/linux-input/patch/20210510163428.2415-1-michael.zaidman@gmail.com/
> But I see that it was not taken into v5.13.
> Jiri, could you please comment?

This one fell in between cracks of my inbox, sorry. Now queued in 
for-5.14/upstream-fixes.

-- 
Jiri Kosina
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/nycvar.YFH.7.76.2107271222500.8253%40cbobk.fhfr.pm.
