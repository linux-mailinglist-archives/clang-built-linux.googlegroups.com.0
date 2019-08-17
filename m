Return-Path: <clang-built-linux+bncBC6ZHNGVS4BRB2G237VAKGQEKNNWKII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9910A9105C
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Aug 2019 14:04:58 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id j22sf5544954pfe.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Aug 2019 05:04:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566043497; cv=pass;
        d=google.com; s=arc-20160816;
        b=pVCUT2lUGVrJcTJfGDgVk+44Mm8qF2kCx+eVSMqjb5WWca1J7m6GX7qXCdgt2wqnaj
         gy6zrkzgx2fREsrLi5nAkUNXHzhajheBFpUuekej3dQpBJUDjmlM5MMjMNG7TrQSIn3z
         F9EEOHKL0dq8eBNhuAz4/zwRgzlccvc7r3cnf6s1fYahMtdbAUJSofp8J0vHM+XiKtsR
         +Ody1zGX9nptY3ac5MjRTRfzXWY01dhfWy0XJWIe26NZIaAshSAsllJMsQvMPsEh4ixg
         ahrhZFD6A3wFDSr+VkKwc0e1J23aXllNmVYOSB0lfhta5XQO9bbF9WdJjWoBMxvv3euo
         5Mig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=F2R7Aebd6HmescUsXvOe394GHV2xbMBUqhQ/Mxmqlsk=;
        b=s428E6rSFfuy7kA2iiR1cu/wJFHQe2SgOY+CtvjA/8C/iBOJyC4eoO5BK6W8M/4H15
         PBe2HqN/thfOayA86t2XRmebBzXa+egqu0TYrE9SctiYuLwz2gPyYRqROrlAGI18OTxC
         OaeVU/c7v2UTEJyie9stwPJY9ReboSsWM3qOuMSPhghGotFi/W9r0WNFxJ6dZ1BmmR6X
         gqlHLuvQkYtC1Tp1nUo15qQh1wYpe92t1ffDSCAQPBOnQFBJH7fbmcMSEKyAQnZattfe
         zAp7U+/sAyFX8awMzY03LpfHgmrKw849sqwOcnnSiAEpzNLdZ/0OgJjdnHMUejrWelkW
         QILQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b="y+lF1GD/";
       spf=pass (google.com: domain of cminyard@mvista.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=cminyard@mvista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F2R7Aebd6HmescUsXvOe394GHV2xbMBUqhQ/Mxmqlsk=;
        b=oEVpBVin0+L4AhGiPfFv08Bala/3SDqEFz+1kMMilwDtKJyX/zXwhQfI79DS9EoF7P
         JC5WuD1ba5tAgJ1B0PRe+TV1pYp45aHOtzesEsGYOeHV1He58RRU0ZKdfSs6ehqytKK5
         OfomfJuzQER+ND5f/YMvpedAty8o5+oBqwSoEyZRbcbwCR0jS0ZUZQw5iwX97dK9VJJ3
         lxSCkt8m6P8YEqdCXEJvD6MP1NsdgqJv3ow8GzvfShDVKnpjiBlwW6cA2qV+j/fBW39Q
         dRV+cIBcpNbctbLfVRbW83ff8wxO79Xz89+fCsBLAioiIajOITEzpFG6VioL+FFsE57c
         lQwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F2R7Aebd6HmescUsXvOe394GHV2xbMBUqhQ/Mxmqlsk=;
        b=m2N2/3eJODlK8DW+EVnmLn7OTIcSK1DKSNZftS2T94vaE3ral0hleN7AfHdDnH3+oq
         frhSUsd47aTzMs1KD77vOYVdjr5rkOcgAuQGHV6X5CH/4TYQChnnhD0umajXtmZ6OzbF
         nip9S5KAZ6DCJrhXr8Cd1aUuYaKqnxWlVIs34uLjeZKfXpvykICPRpv0nIQ8LgFHuJR2
         R7D2Mb/pJpe6q905UCpQqgpefSNGEyYUdG0NDOCmH8MA2tIAAbPz7fKf7sIxnXA03mEm
         flVoowxWeqX9jgmNt4a8GyOtgdc1CxQe+pmwn/6dPd8+XhkB9oVanaCyIS+vpiGmXK+a
         epzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVoYDPsi944aaV4M+fh4z46UDsU6Yv2l+k1wrfNHZXKzS5DWmqa
	GM3QYAigmZOIq/061N/wZAo=
X-Google-Smtp-Source: APXvYqzoRSna6D8+6b6XO+5HKEt/il6BReLKluHVqs36XMYWi2Ca5O81B5eP2aD3e+aD2v1GG6ifdA==
X-Received: by 2002:a62:144b:: with SMTP id 72mr15380289pfu.42.1566043496867;
        Sat, 17 Aug 2019 05:04:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ed0b:: with SMTP id u11ls2745491pfh.15.gmail; Sat, 17
 Aug 2019 05:04:56 -0700 (PDT)
X-Received: by 2002:a63:6c02:: with SMTP id h2mr12257004pgc.61.1566043496402;
        Sat, 17 Aug 2019 05:04:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566043496; cv=none;
        d=google.com; s=arc-20160816;
        b=KkproI114rdyBTqf1ofjBBM40Os5OPrapvaaszCCWLhLsp/3KbH1GhcR9cwnrXwo0e
         18zWGx9Ny560i+WgmAp1kWC0sK8dnTkxubANzsaF91B7iG4sEpr4fFEedZCrkNjTKIyE
         D2huxSkOHtT7+dH11LpzRxwSMFWxdCzhqSlgyENzLzVGob0jkHj4R8/IMLx2GOa+2+hk
         jw18SxMGiF1Mt9Wcxh3GS0CHbYyZcRqt3nfprXQzssixCfmIFPDVuHlgzrzEDpK0ShJW
         eP3kexvkguSAsH+AcmfM+y5jqkH/zayVymUPAR0G3uqiaiiIzoyVmlj8v/rUk/2zlgBC
         6pSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=hAZIwh1/Jg0rTOazQvsDh9wOX8oBkh7nlAX1qvY4fgI=;
        b=h7FoNmjTvV6N/f2xiorT6VsLkZ9ASqDd8i/ZpQ1PFOoFjdYoD62r8xzlplyLBbVyJv
         Ue6iicH1wa9nmXmIUd79VtRTDhL8OuZ2vvMY7mr0/AUwt5A6La+5j4Hf3BU7K0kpabVM
         U3/8V02RzzsBlbIuPHW4lYeO0RG/XsEEnh6EOSzKscu9emzfmwA9z9OKEzym0aL2vUWX
         zLI3yhKKzbMtlSU4f76XY89Dq9OVgFSgSqOEdkBjt4NQpNN6Dg0dDuSumo+tfcxoY1iN
         u+4eX8dNeMA18Pfv+KbfP+mX35oYMaR36orGw1PLbzp7Aa1IjvRkK498pshtTMd9SBb8
         Vdag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b="y+lF1GD/";
       spf=pass (google.com: domain of cminyard@mvista.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=cminyard@mvista.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id r202si534199pfc.0.2019.08.17.05.04.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Aug 2019 05:04:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of cminyard@mvista.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id f17so12051903otq.4
        for <clang-built-linux@googlegroups.com>; Sat, 17 Aug 2019 05:04:56 -0700 (PDT)
X-Received: by 2002:a9d:70c6:: with SMTP id w6mr9483053otj.349.1566043495869;
        Sat, 17 Aug 2019 05:04:55 -0700 (PDT)
Received: from minyard.net ([47.184.134.43])
        by smtp.gmail.com with ESMTPSA id p2sm3023823otl.59.2019.08.17.05.04.54
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 17 Aug 2019 05:04:55 -0700 (PDT)
Date: Sat, 17 Aug 2019 07:04:53 -0500
From: Corey Minyard <cminyard@mvista.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [ipmi:watchdog-rework 11/17]
 drivers//watchdog/ipmi_watchdog.c:308:13: warning: variable 'rv' is used
 uninitialized whenever 'if' condition is true
Message-ID: <20190817120453.GD445@minyard.net>
Reply-To: cminyard@mvista.com
References: <201908170856.hxfanXMP%lkp@intel.com>
 <20190817051336.GD69583@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190817051336.GD69583@archlinux-threadripper>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: cminyard@mvista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623
 header.b="y+lF1GD/";       spf=pass (google.com: domain of
 cminyard@mvista.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=cminyard@mvista.com
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

On Fri, Aug 16, 2019 at 10:13:36PM -0700, Nathan Chancellor wrote:
> Hi Corey,
> 
> The 0day has been running clang builds for us and this warning cropped
> up.

Thanks.  I'm not quite finished with this yet and I didn't realize people
scanned random branched that appear in places :).  But this was helpful,
it was an issue.

-corey

> 
> On Sat, Aug 17, 2019 at 08:37:57AM +0800, kbuild test robot wrote:
> > CC: kbuild-all@01.org
> > TO: Corey Minyard <cminyard@mvista.com>
> > 
> > tree:   https://github.com/cminyard/linux-ipmi watchdog-rework
> > head:   d517d12b641aef58e919f9d30ae78244e54158ac
> > commit: 308c71219855f8ef9e68921e42b43a69756001c0 [11/17] watchdog:ipmi: Convert over to the standard watchdog infrastructure
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         git checkout 308c71219855f8ef9e68921e42b43a69756001c0
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> >    drivers//watchdog/ipmi_watchdog.c:312:7: warning: variable 'rv' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
> >                    if (preaction_val == WDOG_PRETIMEOUT_NMI)
> >                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers//watchdog/ipmi_watchdog.c:321:7: note: uninitialized use occurs here
> >            if (!rv) {
> >                 ^~
> >    drivers//watchdog/ipmi_watchdog.c:312:3: note: remove the 'if' if its condition is always true
> >                    if (preaction_val == WDOG_PRETIMEOUT_NMI)
> >                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >> drivers//watchdog/ipmi_watchdog.c:308:13: warning: variable 'rv' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
> >            } else if (strcmp(inval, "preop_panic") == 0) {
> >                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers//watchdog/ipmi_watchdog.c:321:7: note: uninitialized use occurs here
> >            if (!rv) {
> >                 ^~
> >    drivers//watchdog/ipmi_watchdog.c:308:9: note: remove the 'if' if its condition is always false
> >            } else if (strcmp(inval, "preop_panic") == 0) {
> >                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers//watchdog/ipmi_watchdog.c:305:6: warning: variable 'rv' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
> >            if (strcmp(inval, "preop_none") == 0) {
> >                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers//watchdog/ipmi_watchdog.c:321:7: note: uninitialized use occurs here
> >            if (!rv) {
> >                 ^~
> >    drivers//watchdog/ipmi_watchdog.c:305:2: note: remove the 'if' if its condition is always false
> >            if (strcmp(inval, "preop_none") == 0) {
> >            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers//watchdog/ipmi_watchdog.c:293:8: note: initialize the variable 'rv' to silence this warning
> >            int rv;
> >                  ^
> >                   = 0
> >    3 warnings generated.
> > 
> > vim +308 drivers//watchdog/ipmi_watchdog.c
> > 
> >    290	
> >    291	static int preop_op(const char *inval, char *outval)
> >    292	{
> >    293		int rv;
> >    294		const char *gov = NULL;
> >    295		unsigned int orig_val;
> >    296	
> >    297		mutex_lock(&ipmi_wdt_data_mutex);
> >    298		if (outval)
> >    299			strcpy(outval, preop);
> >    300	
> >    301		if (!inval)
> >    302			goto out_unlock;
> >    303	
> >    304		orig_val = preop_val;
> 
> Should rv be initialized to 0 here or in the individual branches?
> 
> If any of these if statements hit...
> 
> >    305		if (strcmp(inval, "preop_none") == 0) {
> >    306			preop_val = WDOG_PREOP_NONE;
> >    307			gov = "noop";
> >  > 308		} else if (strcmp(inval, "preop_panic") == 0) {
> >    309			preop_val = WDOG_PREOP_PANIC;
> >    310			gov = "panic";
> >    311		} else if (strcmp(inval, "preop_give_data") == 0) {
> >  > 312			if (preaction_val == WDOG_PRETIMEOUT_NMI)i
> >    313				rv = -EINVAL;
> >    314			else {
> >    315				preop_val = WDOG_PREOP_GIVE_DATA;
> >    316				gov = "read_data";
> >    317			}
> >    318		} else {
> >    319			rv = -EINVAL;
> >    320		}
> >    321		if (!rv) {
> 
> rv is uninitialized ^ here. This doesn't appear to be fixed in the top of
> your watchdog-rework branch, even though the code is slightly reorganized.
> 
> >    322			rv = watchdog_pretimeout_governor_set(&ipmi_wdt->wdd, gov);
> >    323			if (rv)
> >    324			    preaction_val = orig_val;
> >    325			else
> >    326			    strcpy(preop, inval);
> >    327		}
> >    328	out_unlock:
> >    329		mutex_unlock(&ipmi_wdt_data_mutex);
> >    330	
> >    331		return rv;
> >    332	}
> >    333	
> > 
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> > 
> 
> Hopefully this is helpful!
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190817120453.GD445%40minyard.net.
