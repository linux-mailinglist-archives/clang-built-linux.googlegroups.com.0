Return-Path: <clang-built-linux+bncBC475EUZ24JBBW7423VAKGQEXY6YCJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDD28F5A5
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 22:19:40 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id b30sf1943535pla.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 13:19:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565900379; cv=pass;
        d=google.com; s=arc-20160816;
        b=yinPN0TsMJtpUoLxpDVuhy40vZ+FgVfVfJuOtpQVZOiRFjsfpeZLG/p/gE77BStlqQ
         uMOaWSVggjbzBxqIkNCauJg/z1JhfOGsYrLMKx83Rct61QP9Qs2yjDJWOkEbbwcQlGFL
         HYYlrqdtP5a1wuzKDRRdodU5d22EEjgLKQjkLnnQzYI4KsCAA3zWqbXRFTRzCjufwJsX
         /lyjB6Vj7kgFSJg7BpZFvjMsCIok+/DfRGFB4uOn/bWXYK+YvHx6vMHQqs5NeYPc7MHP
         09ybfZzK0bqJZv3FPecPWldmWW1Ea7OAykPVB7iu4N+a3zAXVuVdIaAHEpCpyDwg3a+O
         E0cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=oXwoGg1YktBW+95hzJ1hHgZ2sTdFVlCT5XR2U/XpQME=;
        b=vomfI1oj7zrYuJZ6DFUxujrixO4q8INsNYFTXofJbMUpRVkNRo0TWbHSaAz0mZnC7s
         FTPaTushejUerCjO6+7ULHIVWLpcMV+AkjxGrKz82GRkiN4vua2KDSx4StIkrAiyCNZe
         ef1OTMxWVS1O4OkJZ0sgMH2jcXTYX11ONk0EXwFS2vfo7fZdOP3Pn+L8x/15OKI++JFf
         wZyVry7uQhTuVomAAhikHsc089vrSG29b2LlPsFSZaY710Fnmnpx2hK8kQaDnNmIEbQw
         oMg/EwZhyn6AwfEd/kFKR58DcS2PFKYmR0ML0T8Eq4M9hgKyz/N4lillks8WzdbEyeNn
         54TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of keith.busch@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=keith.busch@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oXwoGg1YktBW+95hzJ1hHgZ2sTdFVlCT5XR2U/XpQME=;
        b=pzJJ8DIpz1+LtGQMYOyGGBw/A5+o7LzjDw36IVE8Jl891wE1y57oQavTmmUuVUblrV
         /GnLydaR2QAp29RmKonczlokbhn0/BvdTDDGGeT9vrZia5Wwkrr2ASNxHTFlLPqyrs3o
         BiV0gu+RhiVuk0aU+UnQjb0Wowy+/JaT2vasjjocxYKvosmbX0jdfGdOY20tUNJ53OlD
         p5pojOGENDs4/abnpX5HS8/d9paOXP447lAQWR5X4NGkLvjBV1HbTZozb1BVPApxJd+i
         hsOTMFMCkqL04IQizb7biWjOxeZCWiUyXaMrDj4E/T6/OWOX+c8zyyGf+4HcQzDhMCjA
         Cw6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oXwoGg1YktBW+95hzJ1hHgZ2sTdFVlCT5XR2U/XpQME=;
        b=HKJIGJAiZqin72HHMsvtskeMv01rwXyH9De/Vu+4d9hu0dTPpRJdw5OZg4v1j502tp
         JNOmLix91KJdZWERbbAjqBXZzs+LxfhHknW3/oWyBQDJAzHQNEax0Z01RS/IwzePvp/G
         4xUk6wRxcyEeALfXhJ3DvWwACqomeO0u77dMXaRIdVyjtcxiOtfkzrSXdPJVIcV+4Q5c
         Fh4OO9/b6WRo20ent6aXacebdWT/lnNlY2pMfv09GON1Y0PCjC8YEGLSxkEI+md7jwcx
         vPolex0wyVhnL21QLfdlF2SxQ39G8X1JOZ527cnydbKd9ALZ/xenMBEdwYG15Ny80tgO
         Oxkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWv8iaqP8Ky/Add9tTiFfsIPTUUHsWqnTIOUAroc7JyY+hTwJ/
	6nCOIibyCyhUApct2XjYrqw=
X-Google-Smtp-Source: APXvYqwouwv1H9mTvQmKy0yw7nSsHerLMn0ROyUVNuI7n+T6ARz0RS5wgLg3IHqsJffy4cwv4kzx2Q==
X-Received: by 2002:a63:1d4:: with SMTP id 203mr4754813pgb.441.1565900379125;
        Thu, 15 Aug 2019 13:19:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3043:: with SMTP id w64ls1299148pgw.15.gmail; Thu, 15
 Aug 2019 13:19:38 -0700 (PDT)
X-Received: by 2002:a63:194f:: with SMTP id 15mr4974597pgz.382.1565900378689;
        Thu, 15 Aug 2019 13:19:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565900378; cv=none;
        d=google.com; s=arc-20160816;
        b=SgoT2Q8DYgvyUqZIybyYpNpNc7DY9X3Yo2zSGQzIP5IsWJrLK7oTiGKjMZ8aZUt80E
         HmVanuoymDT+uIETjjVDAJho2SsxHx+ZFh0EH3J+lqYdDOu7Rbpd48GhgHGPpYFXWucp
         /P4GpIC1USKLnAXp/p5bftjJCKuW+WG/wpP/ovRnofbdTU38FvuPgEVyzO8aorngVubU
         9oczWrj0oesAmGMi2UChaD2cz+V0krxYN1rwbFiXO4QW+e2p/CGFhT6hCYFAautgjHAN
         gnKT7yTKOjUTapBCzY1aN8fGTIhZi4qo3I7iZLmkn5bmba1q7Z93+imnabPY8tz/0oyV
         u6cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Fj6A4aYZTM9umHzbIXZZ1FI/p551vWw3khAK4MuaRKQ=;
        b=BNFq67tX8jjcaq/Ag4n7wJhNhk1ofUaF3+GAe6uba7r3Zy3KtTuEw8WzZDTl7d2bnK
         NEpRWo5CWlXzBAnDlMIc7Fox9oKfRE6PBkSV6VeBRgqwkOm7jrFqxoIUo4L+dngIAOlf
         AGMwSm2NJM6BtjSyyuMxn1RBwWM96ARIvckq1p7m6iwHl/coawkIF5x13pR945pD4FUd
         roNMZL9ahsqdczyYghf7fy+TIrEM1ckP4dQFab4NBF7W2rDK/rz4G1cZMR1jnURhC0/k
         NUfzszEcjwBvkITylKE26iLzRGYYsZlzKPZgu0ciq6QhOtTsTU07dSHKscbf9RrzMwuj
         yMQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of keith.busch@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=keith.busch@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id u199si226119pgb.1.2019.08.15.13.19.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Aug 2019 13:19:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of keith.busch@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Aug 2019 13:19:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; 
   d="scan'208";a="377200884"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
  by fmsmga006.fm.intel.com with ESMTP; 15 Aug 2019 13:19:38 -0700
Date: Thu, 15 Aug 2019 14:17:27 -0600
From: Keith Busch <keith.busch@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Keith Busch <kbusch@kernel.org>, kbuild@01.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [kbusch-linux:lru-promote 24/25] include/linux/mmzone.h:282:61:
 warning: use of logical '||' with constant operand
Message-ID: <20190815201726.GA5813@localhost.localdomain>
References: <201908151055.OL6W1ZPG%lkp@intel.com>
 <20190815201444.GA119104@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190815201444.GA119104@archlinux-threadripper>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-Original-Sender: keith.busch@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of keith.busch@intel.com designates 192.55.52.43 as
 permitted sender) smtp.mailfrom=keith.busch@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Thu, Aug 15, 2019 at 01:14:44PM -0700, Nathan Chancellor wrote:
> On Thu, Aug 15, 2019 at 10:22:57AM +0800, kbuild test robot wrote:
> > vim +282 include/linux/mmzone.h
> > 
> >    279	
> >    280	static inline int is_file_lru(enum lru_list lru)
> >    281	{
> >  > 282		return (lru == LRU_INACTIVE_FILE || lru == LRU_ACTIVE_FILE || LRU_PROMOTE_FILE);
> >    283	}
> >    284	
> > 
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> > 
> 
> Hi Keith,
> 
> The 0day team has been running clang builds for us and this warning
> popped up. Looks like there should be an 'lru ==' before
> LRU_PROMOTE_FILE?

Indeed, thanks for the notice. I'll fix it up shortly.

BTW, this is a pretty experimental branch. Is there a way to mark a
branch as such to have 0-day skip it? I occasionaly do some pretty quick
'n dirty hacks for these PoC features and I only push them for easier
collaboration, and 0-day can end up making a bit of noise for things
that are not quite upstream ready.

Thanks,
Keith

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190815201726.GA5813%40localhost.localdomain.
