Return-Path: <clang-built-linux+bncBDY3NC743AGBBCOX3XWQKGQEGGYCTCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AC6E7C57
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 23:28:26 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id i7sf1912109uak.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 15:28:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572301705; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z8fU4JhJEybtkOlzlvic7BjqlA9Uau81oX8LsLYrr6RFfKOXyiPwCqNeChElw26FUY
         QlPA3sg5Z1C42Y9xZAAXdxJOzV/xCG4s0UArVf7/U18Ee/I5lY4EZsSetoww/8W0MoY/
         xd8O3PPL4gZnwtv7PaXeM9KIupT8DzmW/uxMH4tIgvyOmpIst6Wwni4hqa38E9YZL4ZR
         GaqavJ7ImIiIXTdOx+jR/SUPx9ICHadEHSQ2pShOTgQGTyPyQOuFDg+Ydg7mrhNcMI5B
         EsIRTKmhhg0EeDof7wLhWGSyHBak040Fc76MTQkG3EFDkXsHNjW3Y6UmtTQUUPIYMW4J
         D/eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=vfiUP5r0PFltPE/aIdjZQtMLB8dxt4vsoWjzPrN1izQ=;
        b=J0Ipn+ZfEdvduXC7aLjB89oGEZ8ZbaLZtbs6fQGdyqxpglg/KYzT8LaWgvTTdo1ggu
         TUEOLqzs7vUxDDbg+PUxJWrJmE+HiA982mATWdUJgI8gUH81nshs5akA1Ayj/3toDi9B
         uhyPDfPvKrRLScfbE8Co+vZzw3cKPGULy4WviuCHynHDQ1TFlQO6Wri5tHF5DwfXwuNh
         WJtSGvyhDbzZuAk4D+JNpz+wVFtjXuD1N8ddRnyo71hQmEYE5rWVsFR1X/2cKrhs++E+
         C96Vy9WasW+xQ9t6HZ28pyA9o7OZt2GSaHnfwJvYbtpyWq+OSLUszXG7onqlf3Sv2eNZ
         vXDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.182 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vfiUP5r0PFltPE/aIdjZQtMLB8dxt4vsoWjzPrN1izQ=;
        b=EkhctX6Qbsb7mF0LEffp0eVI2O0cdSy8UlTzuPQ8Nfz76dNZy7NQucZ3zM5hzKWhcL
         fDOqikj2a6mK1P8lSzsnHL8yXm46tnlTgkFE1Fi9lWeYZoJaziySyO7+E65LjeMWnJxi
         pzuNpqoe/Y73TbTSo7t5MDkklwKA4qyAMKyx+of8gBRDA0ojwUy3q8P3SeE+UNf/QnPN
         Mz7CxErKkzCrixxSArBFb1Gahn5VbRcPfzpg760EAZ4PyQvYNSK41I//fCBl30+Jm7RP
         GXPCSO4Sdlr+NONhrOY5OjA4M5C33BrRHCJIupLR/Tyy4H9msz2zEvYmvTM3b0teMliW
         5Ziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vfiUP5r0PFltPE/aIdjZQtMLB8dxt4vsoWjzPrN1izQ=;
        b=tQYrpzUYvuitQdYSNc4cVsmbELisEG6HCHLJ/XOtbEIh25g/vXrETDgV36LzfizUDk
         qUnJmZW2kaeE3MGt4idiAp6nXnjHt0/DnZe1Dfyv4wMKPGmQcXHY3ciiNg7/SWa/ESpV
         xqmNo7/oxmLwnO7BG5ohL9/NTTK0BT5YFxBkL/++Frh2N4RdmGfhLkiWpofWlgQTYHUr
         RFiJcnmDlRr7BPw0cpu8ysOyoSbD0YK3S6Boe3zwaS7X2GkUlVaMIAFWWLi+qswTE8Aw
         7IeJBxDqGQ6IEOR7O1++3fJkGKMRjL3d2vn6b7NgaNoGH/srtOeHi1ojj2J5n7DHKpTO
         8f3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQGKyzSkwdEp0h7WJ9LQt6C34T9qASYyXlQKwzIv+Rtv4oJDO+
	WabqcDJL2OjGQ3lniw06m2w=
X-Google-Smtp-Source: APXvYqx/f4azmAux3cXkSGaRvUEuPv765+fFVFeJwsnN5iSaH8oOLYPIE/KmJAduQaOWs1OUexopAg==
X-Received: by 2002:a67:af0d:: with SMTP id v13mr10504980vsl.4.1572301705485;
        Mon, 28 Oct 2019 15:28:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ed0f:: with SMTP id l15ls961999vsp.12.gmail; Mon, 28 Oct
 2019 15:28:25 -0700 (PDT)
X-Received: by 2002:a67:eb89:: with SMTP id e9mr5406446vso.103.1572301705192;
        Mon, 28 Oct 2019 15:28:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572301705; cv=none;
        d=google.com; s=arc-20160816;
        b=D9eFBY7jX/jPdoM3EngtEIIcdY2Hz8PPGmhP0/EUXzE0CeC+PnpOb5WLnSm+XxWcU+
         IYiGzf6B/wl8un8qvkMpQwsOWSRKNlGwU+/jStYXBf8y3LT219u0gQtUXJzkkPy2zqT1
         NxmNl6FsePpj6ktc+ENmPJqoLYmI2olfsAt9VSPpDSUjPKbep+I1e/v3QE6nVh34ACOn
         nRerHc60TQZHY4IGf4TOy+eVSN9OUZISZjUKNPurFgpLp69bdBjDiYEcZz/tZ3LM+EP1
         cb+iz1HFK1Hii22NqIS13UfbTnJbPO/pvl/APwSD9pUtTC1Lb5H3MaN0htmpsXijoBQV
         k8LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=Gj9kwn2UakujDjYMuARUfL/HslsRA2Ll/XdS5VGqcz0=;
        b=mKChRCdTF0D7qrJuhAeB6fPItUhPsNkpP0VGh7mCU6QuvFzAUs39TMZCM0P4bI+jJO
         Cpcb2VQCYX3EZssXzu2icNiiWCAFr1Hu2GpeweqStF/cmBbjRtKbKfW1frZxk5wUAPw/
         x8xLizZlEvJ4kmtdp2CXwIt1E0wFxGofitBd/UWcaflACSr8ZJ4zVNcst4Tz0P2AaXtg
         djFRwIBLQxiTYUvEP5nvt6cchbEi9onTwvQ4uZ47uZDwaZdRPemOHJdf+PdJneKpcRp3
         B7Ya/53zrGWe8///5K2L5zGS9Gx/pbl5b89VHHoCFvJ8fI7c/m9As1jYPP3G4zHAr/Vc
         7XQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.182 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0182.hostedemail.com. [216.40.44.182])
        by gmr-mx.google.com with ESMTPS id a12si111147vkm.1.2019.10.28.15.28.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 15:28:25 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.182 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.182;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 914C78384360;
	Mon, 28 Oct 2019 22:28:24 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 90,9,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:334:355:368:369:379:599:960:966:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1711:1730:1747:1777:1792:2196:2198:2199:2200:2393:2553:2559:2562:2828:2895:3138:3139:3140:3141:3142:3354:3622:3653:3865:3866:3867:3868:3870:3871:3872:3873:3874:4250:4321:4385:4605:5007:6119:6691:7875:7974:9040:10004:10400:10848:11026:11232:11658:11914:12043:12297:12438:12555:12663:12740:12760:12895:12986:13161:13229:13255:13439:14096:14097:14659:14721:21080:21325:21433:21451:21627:21740:21741:30054:30070:30089:30090:30091,0,RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:25,LUA_SUMMARY:none
X-HE-Tag: crown52_665b347525d29
X-Filterd-Recvd-Size: 4204
Received: from XPS-9350.home (unknown [47.151.135.224])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Mon, 28 Oct 2019 22:28:23 +0000 (UTC)
Message-ID: <00c5ef125a4e62f538de7ddddc9d8fe7085794a3.camel@perches.com>
Subject: Re: [PATCH] compiler*.h: Add '__' prefix and suffix to all
 __attribute__ #defines
From: Joe Perches <joe@perches.com>
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
 linux-sparse@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Date: Mon, 28 Oct 2019 15:28:17 -0700
In-Reply-To: <20191028221523.vlzdk6dkcglxei6v@desk.local>
References: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
	 <CANiq72=B6XKwfkC9L4=+OxWtjxCp-94TWRG1a=pC=y636gzckA@mail.gmail.com>
	 <19fd23e98bab65a1ee624445193bd2ed86108881.camel@perches.com>
	 <20191028221523.vlzdk6dkcglxei6v@desk.local>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.182 is neither permitted nor denied by best guess
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

On Mon, 2019-10-28 at 23:15 +0100, Luc Van Oostenryck wrote:
> On Mon, Oct 28, 2019 at 10:59:47AM -0700, Joe Perches wrote:
> > On Mon, 2019-10-28 at 18:37 +0100, Miguel Ojeda wrote:
> > > Just in case: for these ones (i.e. __CHECKER__), did you check if
> > > sparse handles this syntax? (I don't recall myself if it does).
> > > 
> > > Other than that, thanks for the cleanup too! I can pick it up in the
> > > the compiler-attributes tree and put it in -next.
> > 
> > Thanks for asking and no, I did  not until just now.
> > Turns out sparse does _not_ handle these changes and
> > the checking fails for these __<changes>__.
> > 
> > sparse would have to update parse.c or the __CHECKER__
> > changes would need to be reverted.
> > 
> > Perhaps update parse.c like:
> 
> ...
> 
> Yes, this was missing. Thanks.
> Can I have your SoB for this?

I'm not sure this actually works as there's
some possible sparse parsing changes in the
use of __context__.

There is a difference in linux compilation of
a defconfig output with sparse output of init/
with the new parse.c 

old:

$ make clean ; make C=1 init > old 2>&1

(recompile sparse with changes above)

new:

$ make clean ; make C=1 init > new 2>&1

$ diff -urN old new
--- old	2019-10-28 15:20:00.524678375 -0700
+++ new	2019-10-28 15:21:14.004674721 -0700
@@ -55,7 +55,25 @@
   CHK     include/generated/compile.h
   CHECK   init/main.c
 init/main.c:173:12: warning: symbol 'envp_init' was not declared. Should it be static?
+./include/linux/rcupdate.h:598:9: error: undefined identifier '__context__'
+./include/linux/rcupdate.h:651:9: error: undefined identifier '__context__'
+./include/linux/rcupdate.h:598:9: error: not a function <noident>
+./include/linux/rcupdate.h:598:9: error: undefined identifier 'RCU'
+./include/linux/rcupdate.h:651:9: error: not a function <noident>
+./include/linux/rcupdate.h:651:9: error: undefined identifier 'RCU'
 init/main.c:506:20: warning: symbol 'mem_encrypt_init' was not declared. Should it be static?
+./include/linux/rcupdate.h:716:9: error: undefined identifier '__context__'
+./include/linux/rcupdate.h:736:9: error: undefined identifier '__context__'
+./include/linux/rcupdate.h:716:9: error: not a function <noident>
+./include/linux/rcupdate.h:716:9: error: undefined identifier 'RCU_SCHED'
+./include/linux/rcupdate.h:736:9: error: not a function <noident>
+./include/linux/rcupdate.h:736:9: error: undefined identifier 'RCU_SCHED'
+./include/linux/rcupdate.h:716:9: error: not a function <noident>
+./include/linux/rcupdate.h:736:9: error: not a function <noident>
+./include/linux/rcupdate.h:716:9: error: not a function <noident>
+./include/linux/rcupdate.h:736:9: error: not a function <noident>
+./include/linux/spinlock.h:211:9: error: undefined identifier '__context__'
+init/main.c:1222:9: warning: context imbalance in 'kernel_init_freeable' - wrong count at exit
   CC      init/main.o
   CHECK   init/version.c
   CC      init/version.o

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/00c5ef125a4e62f538de7ddddc9d8fe7085794a3.camel%40perches.com.
