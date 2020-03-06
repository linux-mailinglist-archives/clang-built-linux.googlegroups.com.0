Return-Path: <clang-built-linux+bncBDY3NC743AGBBC6BRLZQKGQEG4YXH4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0BA17C609
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 20:12:13 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id mp23sf1748860pjb.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 11:12:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583521932; cv=pass;
        d=google.com; s=arc-20160816;
        b=XcyjqpBPhA7gBegfvnWkFjnkTbg5qKvYiabmPMNhyj7FsjYRS/WLnO2eb5Ust0UCyF
         VP3CLcePp8P1SSvhsKs5pCSDYqv3rE77l5Bmmq/Qmi7maMK5cFf/0J/4xJj6vTpayW9t
         M/VUsAL5eoJj/Y+qO54SzFiwu9N6pGngT8TTVOgLADNjtHlFaZQzldUtLm8hX/EhvSab
         x8tSnCRCMTXstL8RaPn44MENaeFiBMsHtOBWQN+og5PcPiCqMF2X7ahRqd0DhlWWtvVV
         riHmIS1rt0l0DJCQRsyFOyyUm3glVeUpB2mE9QGu6ahdhencsSf1EovBEf4nuFsYpWGh
         pcBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=e37iShYLZttR6gZGRGbzahd5sS69AdPebsSrbL4GcFU=;
        b=gcJZXXQeVDCVLmtIkqj7fQRsT+4lTO4uls2GS8gkuZ02seEnlrjWw7yxycMTWXTouG
         0d52d9ZDhHy6fOjfKVQTIIpCa+g1X2n8Hx/bVrlvw627l+eKAa4MJkR+ioqItixjJz6V
         vYLm69U5V/+0yZOBNdnP7jXiG47DDjCJBKsoTKf17jhHbqqBNwuW3yzixb7jzWGQqEeO
         qtQ/A2v0afQZ3kvkk33ZKxUg2k8GGs9YzJQkkMtiM2MX4qAQYzogC+B94/ij7j1R6ADO
         t4/7/9RWOuL4fWiCP7rsKG8vAs/qTkJdCmQGWUVfnpZMaYrmNvRGvkyr3+qtDxdPrMMn
         tI2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.160 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e37iShYLZttR6gZGRGbzahd5sS69AdPebsSrbL4GcFU=;
        b=qWWDljTWg9bw4lrIsRJ+JXPLVra+i+QbZh7Kp7yupN5WYhMlaCMamkIY9UJyBPZYqQ
         Qgm0Tp4ap194JGuPy139zTnca+PTeQ+uqdD7dyAEtQ9BJfgbqT3yqxetdAMocsKC7J6Y
         lGlZtUIoleQxhLuSAqnB5xR9G3TWakxQ+CGtplGGDRZR+hvuRgV1W8iV5VeP/bE3FZOq
         OBtep7opV137bwxmF3rRQmd22kthdc71b9r8WelL0iwu17fQfAByNV3T+J2oj0Vn/Ai0
         2Ho6e0g15kXC2/TLllYteAvXRNDMTPnTQSxdS/ArqVwN2GrxM+Ks5wPqEQ04tEP67JYS
         r/wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e37iShYLZttR6gZGRGbzahd5sS69AdPebsSrbL4GcFU=;
        b=BN0vlKub24Lx8CnQ2AJn+fSMQSeLB7hiS5hH51lBris5JoGaICa/IEuk9HOMq2HL36
         U+vxUNbNKPyxceeKzaGXLThuvjP8XO8p2KlNYaT/PQY0oVr0k/ko/xMpLT1k0dXNfgdH
         4RYO4Krl+IHU/tUASF3y5ojQvECOdxd3pdzfT7TW2gV3++jGbDpTWJxjXBQy+lQYWDw+
         Gd5QCzXfjoCniowA7VqDCwWWzI9jnB8zUir/dqYpArTtyYpBrs6mcVMyzw4YYpn0wqrp
         pfMHtY6fb5gzYCeRkCPcgpFOD/Z1KMLd+JtrqIcxIzStiERkDRZsEJHU/t/gcPj3893b
         gZSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Jzd7OcnLDnVilCRQJnr3mUgQIjw1FswF7bGEiEFF4Hccb+E7I
	vzOTTHEz91lYLkLzESmEtKE=
X-Google-Smtp-Source: ADFU+vtteZVtW5ndtNdEBaDG7FrvSoZfV+jTwHwyx0MIcJV+JYn/9qYkcr2wLugPnJR/vp2/F+7RFQ==
X-Received: by 2002:a17:90a:bd01:: with SMTP id y1mr5301466pjr.129.1583521931971;
        Fri, 06 Mar 2020 11:12:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6fe1:: with SMTP id e88ls1117250pjk.1.canary-gmail;
 Fri, 06 Mar 2020 11:12:11 -0800 (PST)
X-Received: by 2002:a17:90a:370e:: with SMTP id u14mr5190748pjb.168.1583521931333;
        Fri, 06 Mar 2020 11:12:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583521931; cv=none;
        d=google.com; s=arc-20160816;
        b=Ut5HOot+LRKPyC2uM6uM/oTEIkjeCckqJ9jtkaMdVKC1I7/U4CIPGIL1ON9zf3hK2v
         7jiYgA6EMSTv6e6/Ft0yHE4z85l72Z8rM17q8YAYXCwfIxqrQYXc+yEBOwdNtH3I4J/s
         YOChbrM2TiWkA+0ct0nsP3zHTBreJWw6zsTDPw7OIcQJJB/iWZeHWQPdsZ0Q6ClrrluO
         t2eXWMJwjZD8HHGv15By1DABwinMs4y4LuI78r43+e7gPjHB1UVTF0eCv1hkWgM8IeUo
         zITxT1plGmotyWRpICyahdaMQ/MT91i1OQ2IPNhXKSppei0k+5Phoitr9RiOS6Bgo2ZB
         WWXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=mBMR5as9eC7XAKYrmhAs7JUgUEBL6KR1PzKUz1EQKfg=;
        b=oJupPxyCbUA4fjr2eyOg4wlSYmmPKUZdoa9kZmhVt2x+85GsWdkiayP3PmFTuajLQ1
         GEPu5NcEI+WYo4G+j3zSTXcWbeBoJiE9cxiCdcNDyoUL/xbjHlCNExDm+ZgZ6m0xY1zI
         oy3LEcbKAgijV9ghxF1WbBVzOgw3jx9VnkCucczsWwTNoXZV6pkHSXnEaGietB4LKu7P
         m+ORNiiaYoGHwneyucUeQf0mmaRa0+Q3/kfrBxlgRVNIRIGlO2o45voWnrNgEGy1wb04
         /K78czY4ijQ32qGonZU6yrsJvFkDA3clkFObQw68L9QwFd6c1iSOL5fmkQKiB4sj9lM3
         a2IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.160 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0160.hostedemail.com. [216.40.44.160])
        by gmr-mx.google.com with ESMTPS id mv5si665551pjb.0.2020.03.06.11.12.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2020 11:12:11 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.160 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.160;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id F3F49182CED5B;
	Fri,  6 Mar 2020 19:12:09 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 90,9,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:2911:3138:3139:3140:3141:3142:3353:3622:3653:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:4425:5007:6691:6742:7903:10004:10400:11232:11658:11914:12043:12297:12740:12760:12895:13019:13069:13311:13357:13439:13869:14181:14659:14721:21080:21324:21611:21627:21660:21740:21741:30005:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:14,LUA_SUMMARY:none
X-HE-Tag: shelf13_870d94afc7347
X-Filterd-Recvd-Size: 2547
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Fri,  6 Mar 2020 19:12:07 +0000 (UTC)
Message-ID: <4ec4c6915c23545a9d45f37df9ab4eb6a422b234.camel@perches.com>
Subject: Re: [PATCH] sched/cputime: silence a -Wunused-function warning
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Qian Cai <cai@lca.pw>, Peter Zijlstra <peterz@infradead.org>, Ingo
 Molnar <mingo@redhat.com>, juri.lelli@redhat.com, Vincent Guittot
 <vincent.guittot@linaro.org>, dietmar.eggemann@arm.com, Steven Rostedt
 <rostedt@goodmis.org>, Benjamin Segall <bsegall@google.com>,
 mgorman@suse.de,  LKML <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Date: Fri, 06 Mar 2020 11:10:32 -0800
In-Reply-To: <CAKwvOdmdaDL4bhJc+7Xms=f4YXDw-Rr+WQAknd0Jv6UWOBUcEA@mail.gmail.com>
References: <1583509304-28508-1-git-send-email-cai@lca.pw>
	 <CAKwvOd=V44ksbiffN5UYw-oVfTK_wdeP59ipWANkOUS_zavxew@mail.gmail.com>
	 <a7503afc9d561ae9c7116b97c7a960d7ad5cbff9.camel@perches.com>
	 <442b7ace85a414c6a01040368f05d6d219f86536.camel@perches.com>
	 <CAKwvOdmdaDL4bhJc+7Xms=f4YXDw-Rr+WQAknd0Jv6UWOBUcEA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.160 is neither permitted nor denied by best guess
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

On Fri, 2020-03-06 at 11:02 -0800, Nick Desaulniers wrote:
> On Fri, Mar 6, 2020 at 10:39 AM Joe Perches <joe@perches.com> wrote:
[]
> > Turns out there are hundreds of unused static inline
> > functions in kernel .h files.
> > 
> > A trivial script to find some of them (with likely
> > false positives as some might actually be used via ##
> > token pasting mechanisms).
> > 
> > (and there's almost certainly a better way to do this
> >  too as it takes a _very_ long time to run)
> > 
> > $ grep-2.5.4 -rP --include=*.h '^[ \t]*static\s+inline\s+(?:\w+\s+){1,3}\w+[ \t]*\(' * | \
> >   grep -P -oh '\w+\s*\(' | \
> >   sort | uniq -c | sort -n | grep -P '^\s+1\b' | \
> >   sed -r -e 's/^\s+1\s+//' -e 's/\(//' | \
> >   while read line ; do \
> >     echo -n "$line: " ; git grep -w $line | wc -l ; \
> >   done | \
> >   grep ": 1$"
> 
> Please start sending patches to remove them and I'll review.  If this
> is a good amount of work, I have newbies that are looking to
> contribute and can help.

That's not a task I care to take on.

I could run the script and post the results through
if you can not.



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4ec4c6915c23545a9d45f37df9ab4eb6a422b234.camel%40perches.com.
