Return-Path: <clang-built-linux+bncBDEK5SNFTINRBAND373AKGQEIZV4X6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-f185.google.com (mail-oi1-f185.google.com [209.85.167.185])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0781ED470
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Jun 2020 18:36:19 +0200 (CEST)
Received: by mail-oi1-f185.google.com with SMTP id c13sf1846656oiy.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 09:36:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591202178; cv=pass;
        d=google.com; s=arc-20160816;
        b=zBc+HZLIeSI1MoI9Ny4asDacPacDaFyqY8OpSob7dDn/tnpTgJ3iPO3fQsp8Uf1IRC
         Wi4bt7FtcAwKufVCUDbPmtao1vI4/FLroPESE53gA+oJ96N+t4oDQl2I+GfnlBXiyWKx
         g8opNUlUDoE2d91lnGtNNEIynvitucEN44Q9wNCxNRNNaihe1CsXBQWfD1uRqz0ikJs+
         hTFBJST1kAwBEJuTjU3f6kJ9HxI+mYSD4zinytZGiLekIzzGOo1To0TbPetb8nB8zHeY
         rdGiLLKApSBtjOzA5/sgYVlax6wHsSgeO14/r0s82LAOgccCGYiMeeqb0f+DCv8C8qQr
         AXIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dmarc-filter:sender;
        bh=4wppM+APdyng2+D3ZTy8NWiSPpjvc+Qpa71mgmUcXvM=;
        b=S6Zmdr5SOSRHvwtStoaGNv8d/1itEOU3APlm2iXHvy3FzQo1C010W5+3UjrI7NgXI7
         yy/+BV0ACLqaquoQN9ceDh0Os+rmWxDOskOjl+YRsPIDxK7k4BJBtxvcjksbeVfJaoNJ
         vR6MX4+bfAAeuUtNcuS0N/tubD+aO9lKmdtjGWGxkrbQdsGfAqMmklDKMkiQu2+1TtFH
         Lqg17GlX5TpoKAIPUMq03M07RdUbPaFyNLn6Zwg8dHY/H+ZV+fyH9JsqjY8BSfn7p2xd
         N2eVFL7ld6MCQyEZ4Y4Cps+udaFrawS7OhwqO8Bn3YhVKQwqnzG3Ol3UKdpUmWox0DzV
         CfuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=OqFw6XzQ;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:date:from:to:cc:subject
         :message-id:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4wppM+APdyng2+D3ZTy8NWiSPpjvc+Qpa71mgmUcXvM=;
        b=itdlrWdSzkos95MJvc9rHhUoo6DbQp6QIsTRJTa8I6rFUG0v0GdDoW+17swhFK6+ji
         aBIILfI6EOZ9HKq512YOJTK1QYdExNnQxZVy2zL5OLTr9T2iv12+gNydyMPWpahRourP
         ispFPFO0Xaeq5oElw5lolt3pqaDlnFf+pA67HSGSmfmJIppuRlBJMDKj39k1R4aQas1A
         hVFzwkLyainGL94Br/OJyUfV5sAVYrKGgnPJaWm5HQWfRmpFDjVgzpOSd5aCeVHVdzQG
         nFqAlT+JpXGJ1f0hYbJoVaZsKaGrsbxT3E/jDul1Ws/n1jvmAzG+KKahe6FOMfu3fmgI
         lawQ==
X-Gm-Message-State: AOAM532fTi9eMkk8X2fbl1lTCE+s4sk/IpcjSj1HS8OPKX6PLOwboHo2
	HP0uGFqNwCJT4bCezZCci8s=
X-Google-Smtp-Source: ABdhPJxikAaEMaOrFeZvI4FobED/ENPB3+qusplu6R7lw4jIeci1T9lXOMJGAWGepP0FyZWu83EYnA==
X-Received: by 2002:a9d:7387:: with SMTP id j7mr625458otk.157.1591202177727;
        Wed, 03 Jun 2020 09:36:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7d0d:: with SMTP id v13ls629314otn.3.gmail; Wed, 03 Jun
 2020 09:36:17 -0700 (PDT)
X-Received: by 2002:a9d:674f:: with SMTP id w15mr664068otm.156.1591202177302;
        Wed, 03 Jun 2020 09:36:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591202177; cv=none;
        d=google.com; s=arc-20160816;
        b=fMLp01gUFdF1CHxQ2HRfx2t9CX6nEe3p+vp/PrQ48K5t2qSWyUykHrxFZFdc5rxNi0
         t8J4oWgf6cR5nLhzIeoOZpEmhW3jzGP6+8HQWTuG+FvYQpGtwsjSxbOaKDYMVM7LPL4s
         Uz8pUyNCGOKP7qBM2/Ye4y32TNG27rn27lnBh8LdHdsi3YiJmemwjFpP3qA/JHesofKk
         qT+w5T7lMslPjvOTtJfnlzEo+RIhVLUYT/BagnDm6QsJ8lFo2PUXFOkf58/hqYz7aANb
         nxXelP/GDQy2/7sfcW/cL2wx7q7pJVxsIXxppgAfA1f2h2gjDXrWye42bHPZokB2sWJL
         z5lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dmarc-filter:sender
         :dkim-signature;
        bh=ultY0r5t4uBj8mF3ALfq8jXLFf/HIqKn1Cw3ofneGMk=;
        b=hp47W39puG8y7vW+so5jLk5Ylxw6gFUTD3XxQebYNapChRjxy42BDe2h2G4fbgPCyD
         KUQKprUlnmcTEZIsrwfrWpu8JOgWedF5oxLbZlyfd1F3tPRRypzT+TVwpE++cOArfidU
         C60VOAo9qY43T2yaVfrFE++XpPBw2uHyq3F7L53LuqmwkXKK435WhkuRfpOCr6+uX+S7
         1d1jPx3INflvkJMpfNy9zQkdqul2VyXxXCTOSbwFSOVweKVXHv3orNsi2+v+EiIIhepR
         jt/1rNoy50fUt6YAnSComcqih87WhTcbgb7sKjUkn4OpbFvEyN8U5RoUcvrN59tbGOFt
         EbRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=OqFw6XzQ;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id d2si143448oig.4.2020.06.03.09.36.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 09:36:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n09.prod.us-west-2.postgun.com with SMTP id
 5ed7d17809c3530d126507aa (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 03 Jun 2020 16:36:08
 GMT
Sender: jcrouse=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 822DCC43387; Wed,  3 Jun 2020 16:36:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: jcrouse)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 4C9A4C433C6;
	Wed,  3 Jun 2020 16:36:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4C9A4C433C6
Date: Wed, 3 Jun 2020 10:36:02 -0600
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Will Deacon <will@kernel.org>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
	Robin Murphy <robin.murphy@arm.com>
Subject: Re: [linux-next:master 6465/14955]
 drivers/iommu/arm-smmu-qcom.c:15:34: warning: unused variable
 'qcom_smmu_client_of_match'
Message-ID: <20200603163602.GA31136@jcrouse1-lnx.qualcomm.com>
References: <202006022119.oVUnwCxU%lkp@intel.com>
 <20200603152133.GA11733@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200603152133.GA11733@willie-the-truck>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Original-Sender: jcrouse@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=OqFw6XzQ;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

On Wed, Jun 03, 2020 at 04:21:33PM +0100, Will Deacon wrote:
> On Tue, Jun 02, 2020 at 09:28:22PM +0800, kbuild test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   0e21d4620dd047da7952f44a2e1ac777ded2d57e
> > commit: 0e764a01015dfebff8a8ffd297d74663772e248a [6465/14955] iommu/arm-smmu: Allow client devices to select direct mapping
> > config: arm-randconfig-r022-20200602 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm cross compiling tool for clang build
> >         # apt-get install binutils-arm-linux-gnueabi
> >         git checkout 0e764a01015dfebff8a8ffd297d74663772e248a
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > 
> > >> drivers/iommu/arm-smmu-qcom.c:15:34: warning: unused variable 'qcom_smmu_client_of_match' [-Wunused-const-variable]
> > static const struct of_device_id qcom_smmu_client_of_match[] = {
> > ^
> > 1 warning generated.
> 
> Jordan, can you take a look at this please? Fix should be trivial, but it
> would be nice to squash the warning.

Not a problem. I was planning on pushing a patch today.

Jordan

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603163602.GA31136%40jcrouse1-lnx.qualcomm.com.
