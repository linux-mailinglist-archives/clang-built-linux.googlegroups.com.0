Return-Path: <clang-built-linux+bncBCSKPKGMYYBBBE5E7CEAMGQEVJOGESY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB4B3F14E3
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 10:11:00 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id 22-20020a630c560000b029024e7eb20fc3sf3040366pgm.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 01:11:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629360659; cv=pass;
        d=google.com; s=arc-20160816;
        b=MGk9PkJmZnsw+1lOCb4QAekW+ZbP/i1qbfwW4RLFoGJgwD023vbmAMa4HRn6uNpVEX
         7ZgmY5DodezVqn7zCVjAQyY5DFE1gkWL4deZ9srglKNhtDhtT5X/YgqAgYiS1mg9oaj3
         vB2Qpgozy8c+O5G4Ix5p2DpRL1Jobmw9kRdT++L44S50otX6Ql9H5lfBmyEsNfBWE72N
         3B/GWSbXXvSQ+08tdHPGFfQyBTrK3Ts0xahcbIUoVEBwS6kC9XfvSquO9UJpZovCrVQY
         NE9ySAJ6PhWrSf0YQfkRFwTqVCPAr/qOqR1ZEJoFA/+OmKuL7co6UT6KyhxZ501C3CAr
         xAIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/dgbFinvK2V6GlYOUaw/CO/m44h3mvNWh+4m7NSjoKY=;
        b=rjldwb+szOzcxkncP2xReETYvTGnjI10mbE/AzsZE1FS6KsYe5UN7L+ZdENvXsEIm8
         2c2eCvRPv+3QbOVzV9DwtyR+HmPipa9ZBMcl7SuQk2uBh/hxZeGbrG48w+ih3upwfx8B
         HiUZx24rTJLPkuQNR7xkGJQ8dYUu8SCzAziSam6CeXPwxACbmiBcxcAMDt0YwauYzIG0
         NgDGp9p5u003DMQO8xUY9ecwql/Q0gbsXb299QFQTcFMpHkmL28NkE0ew240ApZHHxwk
         PqHSCxbstog/jgkzqWJ3T3nKzjxcTiwTfk4/hCN8oKiAYHwkvhDr7WmE8l10stSl6y38
         8gaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/dgbFinvK2V6GlYOUaw/CO/m44h3mvNWh+4m7NSjoKY=;
        b=Ue8AC3/9V3jRpZSNLoOb3uEJaFBThLqzCMERsnCg1E8nuFjmuK93+rcIz4j0RR3TiZ
         Kg9+XlFPY2+vWEJhPTBGKl2brK0bQIePdfJs36IrAHNYZiurercW7pgIEljaFYst8eIz
         yOnL19/fYBkDGndEHrOYl7Ms9GzsM+MCeOS3Hp4oMBIJWllmVDei3O3OmPjPfkbaB5rz
         K5PO/MSM/ylx66452WLMoQztHYrXqYwJor8WtpjVBQTtQVFYbTAGv5lqi/Kp4plRTQgR
         yU3dB0RBbU6grQcPjljBdH7DllvOVc5114bvIj3HoFMPoryd7ewvqg2ifMhfLmrrJhmM
         0AmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/dgbFinvK2V6GlYOUaw/CO/m44h3mvNWh+4m7NSjoKY=;
        b=k8bBbzZ1/zcP/F+fnA5AST/scTNt6Zr7GWxDTTlQ/cCToNeuNcirijuVRxhWrKhwmr
         2zrwf6hxJYnQ7zoBfQnqQb4GA7Lx17KFpTVijI8eIyk6JmvfdIC2J9VsIsuTugm3Y3WE
         VaJU421+xNm0qbl4ToGthghMX+Qmnk+BNqe74B14CnznE62Awh1IyRv+qlQFVTlLjttM
         9S+ZjhSP9WEMHOHnA8hIUk2x7kcEqi/GbZRtfvv/XI9aEqy+oDkQl5sEU+d5qzAGvm8+
         nuhqPpvTd15Af2adsUWUYGF6qUhP+sEgjuI3/8Reo29mmTG7AhKXLZBmtdM4x0jF/PnL
         C0ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cPDJp0mw4rSjuFurkcq0/7YRtFmMVzl8reCa3EjRMK/M9C77Y
	D1if+QMWLRArgZFYgPW2fp4=
X-Google-Smtp-Source: ABdhPJzigdMqVCdCHbWINvbFpyN81RE2vpUl86m86pbzDVNds3sgBgr2xe4rsCpY7MFRrprkgYmjJQ==
X-Received: by 2002:a62:8407:0:b029:39a:59dc:a237 with SMTP id k7-20020a6284070000b029039a59dca237mr13702325pfd.30.1629360659404;
        Thu, 19 Aug 2021 01:10:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:656:: with SMTP id 83ls2297821pgg.9.gmail; Thu, 19 Aug
 2021 01:10:58 -0700 (PDT)
X-Received: by 2002:a65:44c4:: with SMTP id g4mr13002792pgs.254.1629360658851;
        Thu, 19 Aug 2021 01:10:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629360658; cv=none;
        d=google.com; s=arc-20160816;
        b=Q1LnXlXdsjPnU7l59WbWXcRmDPnTMj8urHX+klh+lghqfo6QPED0lsnrYaAXr2xIqr
         sPqNvUd36v55L1lqN2JAkUDmmYeJhieOcWTlsi0fbUqsZz5RPMnUZNzgN9g+gz4wHO/3
         Aro4kh/ZoS0DcqJxAZD/M75UQz6LYUKuQRV3V+958fzMFm/DdrLS6xPyvwBDOBPCK7h2
         H7DZ/p8XvD4VNPPt8n4f1M6ftRedsfSKF1q2cWacpIqjrEoUg8myBJ2EJQz/IQDSvGdi
         fslRQcQp50jijX+l66DLUQAu89pppE3uEuVC5E3KPn8ylJDRbfkAeKFRDf08Bb5vM4aW
         CSuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=8dl5FUbVCeEqxMwZ7CzrPklgCOAApXd9iRhHj5IysQ8=;
        b=xobgn+yhdGOpFTLyP6c+Gt7stPluvdTvTUFysDEXzpeqwGqTnx0VV8c6GJr+I3Wz/3
         NE9yoSxC8WZeKltyGzgWoXGQXT9+cKcEyY7F8ZtGALd1I5NUb4aGqz2apYzQSjVS6VgG
         0O85afkbRSP7Cd0t/RhBXr/iBUy8g9/1JTZ51mG9E34ZCH4XvCGq6en05EhsOQ5BFLSs
         NzG5OScVaYq79h6XLeO9BkjcE385cVxC8y4DbHXF2m2TpgC5OFEGfbheTEcKO1ObpM9A
         GNmR1UzQz83T8vNP7Z21s3pQTKYzSSLpk11Mo72T85SKg/hWkl3lVaI13hCZw0JhUldv
         O08g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id m1si478042pjv.1.2021.08.19.01.10.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 01:10:58 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="277529883"
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; 
   d="scan'208";a="277529883"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Aug 2021 01:10:58 -0700
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; 
   d="scan'208";a="594354462"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Aug 2021 01:10:56 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id F2981203D0;
	Thu, 19 Aug 2021 11:10:53 +0300 (EEST)
Date: Thu, 19 Aug 2021 11:10:53 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: kernel test robot <lkp@intel.com>,
	Nick Desaulniers <nick.desaulniers@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Petr Mladek <pmladek@suse.com>
Subject: Re: drivers/media/v4l2-core/v4l2-ioctl.c:303:28: warning: taking
 address of packed member 'pixelformat' of class or structure
 'v4l2_pix_format_mplane' may result in an unaligned pointer value
Message-ID: <20210819081053.GW3@paasikivi.fi.intel.com>
References: <202107150148.RpWnKapX-lkp@intel.com>
 <CAHp75Vfu1rhUV+SOq2ikFWd2G6x9j3BT6OLPhPcf8VZE5Umeqw@mail.gmail.com>
 <20210716114105.GF3@paasikivi.fi.intel.com>
 <YPF3m01nYlt3On7V@smile.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YPF3m01nYlt3On7V@smile.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sakari.ailus@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of sakari.ailus@linux.intel.com
 designates 134.134.136.31 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Fri, Jul 16, 2021 at 03:12:11PM +0300, Andy Shevchenko wrote:
> On Fri, Jul 16, 2021 at 02:41:05PM +0300, Sakari Ailus wrote:
> > On Wed, Jul 14, 2021 at 10:45:26PM +0300, Andy Shevchenko wrote:
> > > > >> drivers/media/v4l2-core/v4l2-ioctl.c:347:37: warning: taking address of packed member 'pixelformat' of class or structure 'v4l2_sdr_format' may result in an unaligned pointer value [-Waddress-of-packed-member]
> > > 
> > > Why is it packed in the first place? Is it used on unaligned addresses
> > > in other structures? But even so, why should it matter?
> > 
> > It's packed since we wanted to avoid having holes in the structs. There are
> > other ways to do that but it's ABI dependent and is prone to human errors,
> > too.
> 
> What holes can you think about in the above mention structure?

Probably not that one but it has happened in the past that the struct
memory layout has been unintentionally different in different ABIs and that
has not been the intention, but rather a bug. Packing has been added in
newer structs to avoid that.

-- 
Sakari Ailus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819081053.GW3%40paasikivi.fi.intel.com.
