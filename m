Return-Path: <clang-built-linux+bncBDY3NC743AGBBJEO2PVAKGQEL3GGA7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 085398E2DB
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 04:44:54 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id t5sf1206931qtd.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 19:44:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565837093; cv=pass;
        d=google.com; s=arc-20160816;
        b=ElxAnfTMGFVpyQAjTNFqlY07j9j/p2NUg12HIF5opcoEs8P9Cm+ifnlHVe97oX7w0t
         wVhsznAjnmAUZbhElsR0ss+mdeYwUDu3wKY4FVsmaXc1hiOBEgqPdsgjMH91eK2sDaZC
         N7qLB8Gpdv7EQMzJ6guyb1uze/OWCoD9/UISQaKpIPtCGRRsnXu360WnjgMZvG5zFraq
         omTkOOSPY86inM5VSCAyWHSNg/4Y80bMMouvO66WBjYyGBiwfMZat0ynWx7okLEUcRtB
         AKwMJQMuFsxQ9WfYFaBZ5JFr5sUR3xNMp/1eWH1+RI6/N70GUqmRyysYciPt6BjskddX
         fTlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=xVYtHek2ua9EyFjHMnR4eI3VUlC6EV70QwyJF+zwcPU=;
        b=hJLzGW85pTiQr2b0Z93DEO2A8/nP5nlfQWEcAz0cOZGMenrsSlkNFSDyVw9oD0jM8R
         k7fCkqILJ1aYtpIuagkP5ItFYXAqXFN80jLNKlbcA3TC3I64ULw2ajQYxcDgQP3Lby6b
         dFeEqRnNwqm6/vN+PGsVKRsOO75YNbtFdHOG28AtqdAi8pcw7zMSsyeoiInacQYOrX2f
         bPtDaQOUsSH/Fk1a1jndKqaPG5IHWyD9WNqltHtp5RNxD3B7o7TmcP13/lSfBQ9TWvaa
         zCGmlgUGVp7n0Za7d/NA/YozacLqLBpP6TzrPP5qqcMYHv9hlJ6R9ZpWhmflGhddGOW5
         nMBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.234 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xVYtHek2ua9EyFjHMnR4eI3VUlC6EV70QwyJF+zwcPU=;
        b=V4PfmDZrO9Tub5EhrW/d9yMP0TiZK2U5k05XlQFIKyXlV10o3B7NzGZ8NrY9WeUaPp
         Te6kOThJN1tJGizaHSOp6JxDqjdkCkcN4l9VBOncksBTY9msMNS2sjsctF1sZbhjqxT0
         xKHGhBoPzNYb0NYP+3pat5Hd0z5abgV1L6Lk5tnHJ9D26ePo5whXWgW1HnsTwkyQEqJO
         RAbdfXZ4Kq3F7xQoF54cA7IlmuRMhEdu+v4SODrViqu1kraGnSqvesruCV+XBBaEf7km
         uwAiGZfaSZWEXz/zdvXHv/3jc+E96+PYYuAYVrVHo3TC/FmEmoSlhCpVkjusJTEu+JNv
         fecg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xVYtHek2ua9EyFjHMnR4eI3VUlC6EV70QwyJF+zwcPU=;
        b=pLmM6o3HON5jqivWcx8og12N3ihP47P23IeHJl1kNWDprbwJvpEX8DNCWQprdw1Pma
         +v+rl76ZOwLsN44aKqqn6o1UbG1qoANJ+MG9bkTkM1BQngvH0HPV73GgKCelR7IayAtN
         cITYGOeBJ0FAPpnqhXDboNdqsvPsKs360XFFhnBCdTACCNRV7sLxGGJG3mmrGEr9j+xF
         dRtqWhviq+n49/mo9hbe53wWE08z/o4uoC4FAk0nwr+y8Z02j0FJvbHzj/yH/tYB8vnk
         YGsdS27QbFMU3NW5DhowEy2T0Jc0G9hao15WodXxmrwgAvz2Ose2wCowiEKvI/v/UaJj
         6csA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUibXp+aLa6a1MLWCM0x9l+Y28WmJidysHBDxXSb2m2XN4/CywK
	dX6a9kvR1ZO+oFJlFHNeGcY=
X-Google-Smtp-Source: APXvYqwTFM8TtZcYc+4WhDGPuvBG7u5DIDZDrPY+uKT7j3PBdxNrJ8+d+8lRDJixTx+mAP3WOntQXA==
X-Received: by 2002:ac8:180e:: with SMTP id q14mr2099387qtj.327.1565837092918;
        Wed, 14 Aug 2019 19:44:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:bf52:: with SMTP id b18ls643583qvj.3.gmail; Wed, 14 Aug
 2019 19:44:52 -0700 (PDT)
X-Received: by 2002:a0c:e7cb:: with SMTP id c11mr1912754qvo.8.1565837092691;
        Wed, 14 Aug 2019 19:44:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565837092; cv=none;
        d=google.com; s=arc-20160816;
        b=crg2huBWGpXQyiZfMzAlwsx3hBhMem2j1HVf5jdWbda1yQ+RCrJpAH5eT7FYhr/l3G
         XHjctTNvr+vCUjOBf2w4j+6qb60RXLTQ0yPM7c2+O2DAVd6XBEZMaAN5WknQFUHRObc6
         qBe2FOVtXQ5Q8mEFI06fiBo4a01K6iS/5zdDEbMtY/5XlPOtHR5BxTAzuTdxymHGHj62
         JST1kUoKc5FyF5DeetiRHX0ZIG5eEJ/gTHb324Ije29ngaajUDVA5dFBH23Vk9ailEeA
         5r8tpis2E0RiDxJNV0XF1YCHsfFyGU5I+ygqy3nJfx3+5CXCVg9vla3xsdn0HDMi6WMm
         tIuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=p1sf1MiBqRGW2+at8DrGvK0HbWcYdPCxVBUUyEnpG8M=;
        b=VGdhXt3vVgufFaHOBZLXkutR4FoPCeUC+2PQEtQt0eQAecpRU/W37ThSqPLugMGe6R
         Sd81IPNGxdhWP916XvZQWSRq5SZYfYJXnx0yQeqZfJRUGgsDZ7yEIGJUA8qSbHhoIIms
         JxSDNv5XmbPM0V4xEnc0HcMZbjwf5KwHkbALoNPyt51JxBHxB4M9/nd55SQbxh6OhGh8
         16oJu8ELFanUazcxU1vjW8sM6w5dpftlKTGvUggSQSvdyDYBaIWJwPnSQbGH1eOMjhj8
         aEE8asD7ODfsIlwe+OHTsgmUltUz9mABaowwjf4n8ie3047Sarg0SxeBx2OXYLBwRZfv
         nDnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.234 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0234.hostedemail.com. [216.40.44.234])
        by gmr-mx.google.com with ESMTPS id u47si84794qte.3.2019.08.14.19.44.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Aug 2019 19:44:52 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.234 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.234;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 35DF3180A7FA2;
	Thu, 15 Aug 2019 02:44:52 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::,RULES_HIT:41:355:379:599:960:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2693:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:4823:5007:7875:7903:7974:10004:10400:10848:11232:11658:11914:12114:12297:12346:12679:12740:12760:12895:13019:13069:13255:13311:13357:13439:14659:14721:14877:21080:21627:30054:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:32,LUA_SUMMARY:none
X-HE-Tag: move54_d38b8fd79e23
X-Filterd-Recvd-Size: 2898
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf08.hostedemail.com (Postfix) with ESMTPA;
	Thu, 15 Aug 2019 02:44:50 +0000 (UTC)
Message-ID: <128728a0965240aa5b68970d7721d857176ae7cd.camel@perches.com>
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Nick Desaulniers
	 <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Linus Torvalds
 <torvalds@linux-foundation.org>, "Gustavo A. R. Silva"
 <gustavo@embeddedor.com>,  LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Date: Wed, 14 Aug 2019 19:44:49 -0700
In-Reply-To: <CANiq72m5=pqHaNi3P5VAMviaoX6yxT7OPg6sys1uMDki0g2bOw@mail.gmail.com>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
	 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
	 <20190811020442.GA22736@archlinux-threadripper>
	 <871efd6113ee2f6491410409511b871b7637f9e3.camel@perches.com>
	 <CAKwvOdmAj34xDcMUn7Fu_aXdtD-7xHjHuU20qY=rFcr_Kz7gpg@mail.gmail.com>
	 <CANiq72m5=pqHaNi3P5VAMviaoX6yxT7OPg6sys1uMDki0g2bOw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.234 is neither permitted nor denied by best guess
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

On Tue, 2019-08-13 at 14:44 +0200, Miguel Ojeda wrote:
> Hm... I would go for either __fallthrough as the rest of attributes,
> or simply fallthrough -- FALLTHROUGH seems wrong. If you want it that
> way for visibility, then I would choose __fallthrough, since the
> underscores are quite prominent and anyway IDEs typically highlight
> macros in a different color than keywords (return etc.).

Just fyi:

I added this line to my .emacs and "fallthrough" is now
syntax highlighted like every other keyword.

  (font-lock-add-keywords 'c-mode
			'(("\\<\\(fallthrough\\)\\>" . font-lock-keyword-face)))

So now my linux-c-mode block is:

(defun linux-c-mode ()
  "C mode with adjusted defaults for use with the Linux kernel."
  (interactive)
  (font-lock-add-keywords 'c-mode
			'(("\\<\\(fallthrough\\)\\>" . font-lock-keyword-face)))
  (c-mode)
  (c-set-style "K&R")
  (setq c-basic-offset 8)
  (setq c-indent-level 8)
  (setq c-brace-imaginary-offset 0)
  (setq c-brace-offset -8)
  (setq c-argdecl-indent 8)
  (setq c-label-offset -8)
  (setq c-continued-statement-offset 8)
  (setq indent-tabs-mode t)
  (setq tab-width 8)
  (setq show-trailing-whitespace t)
  )

I don't know to do that for vim nor any other ide,
but I trust someone will know and show how it's done.



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/128728a0965240aa5b68970d7721d857176ae7cd.camel%40perches.com.
