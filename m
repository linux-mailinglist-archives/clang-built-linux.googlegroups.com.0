Return-Path: <clang-built-linux+bncBAABBOWTU74AKGQE3GVU4DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E2F21C549
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 18:33:00 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id f4sf5080629plo.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 09:33:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594485179; cv=pass;
        d=google.com; s=arc-20160816;
        b=z7UzVbPMXSY6vkKPf9/9RdEKhgMek1n5J1ktWmRzwDzJ2hc7AOlDKfzIX+D7B9zvj/
         0sf8+w66cSvVBS1xxd2WDDrGrW+p6wDzcPpTrNtbTlgd9N0kFxPgQLFcobqKY9IaGTR7
         4vz6eYXppHaFAFjPaplqqCdrUA870AkfaxIucHFoSbgbpxC67W0XwRZ8zuvRpHqntROf
         U59eezp+gomXg8iRJROf4CZ+D8sSskMo7hY+4fN1tzQ/V5PEEK/b/vL8qigKtmuZtzKz
         CPXcptRt2WExuXpZ105wW3ABijGzGxxz3Va4P1Ip39JRNEEse2Vno5r2uo49we2I57tm
         gj2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=P+nOgz7rJdQjQ27faez4ebsTrfR2X3pSeaqjOiwHS3Q=;
        b=QjbzwaiFlCJc3L2EbIXyVYuJynN0F0fBll3XWoWVno07u6LDRDDEYRo6rwhcPNU4t9
         LjSDQygeCn6CG95VJPvp8MX9BftlBRTeZPnrOv7b6vA9cSmrGh9RrT3xxCXrqLkHrrmG
         AO9crneHl/FhmTz7+S1mqQTCCKBzBZdWE9xxgSDuvIpOyMt4xzmQMPvPCY9yomJZ3ygg
         iq/ddIP5K4fygopRH5VNjmLp4fSa9QqAc2OwbixtzVYtX722IrP0vL6lle8V5LCUGJ2L
         qVrtVrwgcCcGnNJ5nfd1YmUfNVQz9hYh8toWQar7y0vij5YYD5VF7JCVpvdxWpfeLvCM
         rikg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1hGFLX2Y;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P+nOgz7rJdQjQ27faez4ebsTrfR2X3pSeaqjOiwHS3Q=;
        b=D4W+hnmMZ82qyrfrPFkWq9Fsy0x2bsgRX2mEx32N98pmUsBQAhuI3Hs547Dl+ypmLL
         KavsKckE6HoQN1DXulqxqH85nJPZ6ay5c+4xZ3tlJGlzC4Vl8bnqenHvSsu7OOsntrFL
         Me+0zBkEdgZ8GR9/69/MVXgnxhnuImh7A0K11SXZUgu+XzS8nZN4yAaOkV4JBeDsOqmI
         gtRSHFGSv37w73taw4T5A21MLLyphw/qJMCzjCpMtCbytPGFpQltm1zBdNu2zswwXOae
         KfZGqSTr4LMghdqh5ayygEuhdT/cNzqq0fa59i1kDJb7KI3fFY+60CxG/0jBstetPDWo
         PBgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P+nOgz7rJdQjQ27faez4ebsTrfR2X3pSeaqjOiwHS3Q=;
        b=O1hc09nRTumgBjshr2eU6V/jlmZhm058zHS6diwfW78LppW0yZDQP+OIZeAomAPl4b
         HGYB5re0x1DVDgZMt06vXnAe30hoDZqmtgcH33XtzjdY0XSPJ4L7G2QHk5cESjfr+19X
         skgUZnoKOVXptTvFYbIkDtV8aGNUL1CxG5uF42JHTh5x2Dms6Mj+bC8F522t7VoTJUbs
         UUqFg90mTj7WNFGNiEPj5gMG1XRJz6EDdLsRX5pifi2E5bkc27+3rYgdmuHti5G9AXIY
         YhvGv+IGhi8Mo1B0XU+dkiT2ctEL+30RfF+daDI7lZmD6LBjF5d6k/3ahnvLqcq2lGyS
         GN2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533SjmzJmqoyT0y4pa/EgcVpJgkGveUcr/BXojTCflBTVkPjcxs5
	T997EWpHe0hxdfy9DKjZwXU=
X-Google-Smtp-Source: ABdhPJxhRJ+UR61d2AUr4dEkOF+XnKnZ4Kb6+DXOtt19mhUvlFe3p/3tM9Be+5i2yTTiKEhS8WEB3A==
X-Received: by 2002:aa7:9ac6:: with SMTP id x6mr57076543pfp.326.1594485178861;
        Sat, 11 Jul 2020 09:32:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:86c3:: with SMTP id y3ls5487942pjv.0.gmail; Sat, 11
 Jul 2020 09:32:58 -0700 (PDT)
X-Received: by 2002:a17:90a:5c85:: with SMTP id r5mr11539636pji.40.1594485178583;
        Sat, 11 Jul 2020 09:32:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594485178; cv=none;
        d=google.com; s=arc-20160816;
        b=o/QXecDoBxOh7+IJDFXbmCj3wnJteaLwHvKpPbCkJNH3l6lQX+EoKaVinKFapH9TBn
         PqF8c2daBu3ATXQUzyiD3Pwh3tK1u8aCy0hD0p20Erf/jrDcwoZbnsjwODMsFDaj+4Bm
         QnacoAV8Nb2cN06wm+rbxZsyCAS2REPmxG2ftru6ILIskpIPx2pOedT07hQ7ELvv5GGT
         SjJS1G5ZTbnSLf8adPP5gyRgKAXc0JFJQKQq/W2xPRwQF9cye4uvqFf8hVVEmSItC24F
         e34mlAuAyOkwoOYjAPCeIx40FH7lxTvlQSmb9U8FurGsr+IoT6yolBe4pUMs59GYrJtB
         85gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=S2jJxqQLiCHRrrb53MqdK7ozM3UkYD3mmj9LFySshOE=;
        b=M4kUvTYCPhUBqakQX/0puxAbp4cyuufCwoo9zonwwv/Qov8rd6hUx+0vFQM64lHpia
         4x0D4v3qwzCgGQZ/02HLxPklyRFOBrt7x+1w0DclZc1ugtr76AgK2H4hCU6Ap6Ovo0WG
         h09WVUd6a34xiJ06HPNprzO0Ok7dBmB24Xrl8gu7iJtP0JJRa7fwUNf1msUZL0z4nTpT
         NGRoyHMtPV2zdKNw2XtBJjPtnsZGdveKlg6L73Iaea0pYNIQXwTK+YBUefvylaLXr7V4
         f5kZwMSPBDCaNB2qF8qgkh/O2vSZzg1pGxiUUhEGvHzksZWzRbJf/Wb2lbXfLKnu7lv9
         J02g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1hGFLX2Y;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i3si809652pjx.2.2020.07.11.09.32.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Jul 2020 09:32:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8621D207D4;
	Sat, 11 Jul 2020 16:32:57 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <202007072123.7hl7jtYE%lkp@intel.com>
References: <20200707100714.24720-1-akshu.agrawal@amd.com> <202007072123.7hl7jtYE%lkp@intel.com>
Subject: Re: [PATCH 1/2] clk: x86: Change name from ST to FCH
From: Stephen Boyd <sboyd@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, akshu.agrawal@amd.com, Michael Turquette <mturquette@baylibre.com>, Rahul Tanwar <rahul.tanwar@linux.intel.com>, open list:COMMON CLK FRAMEWORK <linux-clk@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
To: Akshu Agrawal <akshu.agrawal@amd.com>, kernel test robot <lkp@intel.com>
Date: Sat, 11 Jul 2020 09:32:56 -0700
Message-ID: <159448517682.1987609.1180699891257324910@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1hGFLX2Y;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Quoting kernel test robot (2020-07-07 06:12:22)
> Hi Akshu,
> 
> Thank you for the patch! Yet something to improve:

I also can't read your patches because you didn't send them "To:"
anyone. Please resend properly after fixing the kbuild errors.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159448517682.1987609.1180699891257324910%40swboyd.mtv.corp.google.com.
