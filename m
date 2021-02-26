Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRGH4GAQMGQECFTBU4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id C675A325BC7
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 03:58:13 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id t13sf5605885pfg.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 18:58:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614308292; cv=pass;
        d=google.com; s=arc-20160816;
        b=V9+tPyi/SRJ/3DAG45qApPvUIzWlt64kc2s6Ssd+joOXYEGvea42d91xPiTCoGHDjE
         HEdn4o8RXzxWNnP2bwI+5Xhfzuqoi0ju+J9fRF2MyBXPasywJlMPNdac/BcmSJX4mVq1
         yNCN7Jb5+R3iTqUoGMBh11F0FT65uhnFX7YM8BxWZ+8KrUs1Ty4BlkyyilF9yh6VblIy
         y8H4eNzzuAxihjs9hhjz30B+1DGIl4YFYBKQ1AtbTihPMFrKrBbrxUpOcDigalt9jd8U
         Gl3tZ7PECgLdqIgD1NVXnNKpLXtNNMb0L1mSVTsnXQ92GYGBkbCri+vgC68BM1uhNmgI
         RdzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=sK+qxIl0AF5+tJqyVqGIoQBuOIb+weCgeVLKT3BMwBQ=;
        b=wgEKYrgXNiZaN7xwWBpJeHIjNEPin6KvKIOcM65pAfkcE1jHfAhKZPz1tGe/7GFfue
         WbZaCyUbBkM1DIGNrjIedvNREs69/Dsb4vR+JCpsGLCMSGY2CX26Dh19oLGfQFx5TkVA
         QGOkQ8KZ0T0aD3dBdj0IapL6L+DeuDLza09DZXN71mRwDwF0snehhKNHf11x2gF1Cxgy
         Bj45nbIOTH5UayEoCCdJVYyPRKevRvs6eFnT3q6PG9N2n0BHksD4/qD/Iv1aciwp53kw
         tOS1YpLcXeEtT9J8xNX/m/A7LqsJgpbG1Paon2QAX6F+lLQ92AsiYmFW86uDRT+Qomjk
         TXoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rU3rSatX;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sK+qxIl0AF5+tJqyVqGIoQBuOIb+weCgeVLKT3BMwBQ=;
        b=SWiOKi2HAZAx6+hr4YtlzryRCFfM1JZ0rEqfLS8Fm0WH2E1ZvZ+9tlL3LEN9+rAba0
         lXGErcL8xpqxvnkbwvC+YwqQrjE5FMGRt7gETQ+dTloXdV9t6I+aL9afyJfbQyzofZHH
         fu69upJ3k6pVhb6pGU+U1/NdIObRTdarpkiasRL8ZaSXkOr5a/wtrTfW2SfjyrQ11AS1
         CmLKxg+Q56HCrvaswRbAhoI84Ay8VywctnGOXouzvybncYJH69sLbXAn5m6tbCTO1E3S
         Ct6YyHiw6B7xVEaLO82FWBibkNvMJYptyjxM89QklcZNGy5cWW37kHEk5VZRr/zbP61s
         rLLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sK+qxIl0AF5+tJqyVqGIoQBuOIb+weCgeVLKT3BMwBQ=;
        b=R914csLdL76ttShnpWECcKGQoWWEJVG0cc7v2PEeFzXIl4qSZSgUaZP4INYpwp6VSJ
         owmMQYocI5ylW7bapYXwiuzvT5eReg8qkdi4X9DwaNaDi3HJoGzR44q456+db+5dREl6
         qPo5NnA+P2sezrLD+sKGuSOGydLDI1EkqUoEb1xuYz38tsXfQovcMj/pyw/gk55gNiLN
         VFgy1FGM/eXyuagKI3qpNyNPsk+zdQyyqO8t1IrtFrp/YI89AQXp2RJN7Z+QK7W07XrK
         hbTkF4QeXbPS0WDsmloRiLbhTTCVBLZ2hgdK2nmcDoz5QNbV3QmoXgls8gqKzbUYmbd5
         qkqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531K84sbdv3b3pG2HrRJasXd1mO6vsA5M79b/rN8LMIcS1TtEH7n
	xNofffelmEpzAMYwK3qMwxc=
X-Google-Smtp-Source: ABdhPJwImuPbnQSeDuPjwRFhHc8kCUwIaF+bdn9GgU0ringn1UwuRm+f0mKy6hr2LNttBQ7bhUX+ew==
X-Received: by 2002:a62:1502:0:b029:1ed:81bf:fcce with SMTP id 2-20020a6215020000b02901ed81bffccemr890622pfv.54.1614308292290;
        Thu, 25 Feb 2021 18:58:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1490:: with SMTP id 138ls3292533pfu.7.gmail; Thu, 25 Feb
 2021 18:58:11 -0800 (PST)
X-Received: by 2002:a63:484b:: with SMTP id x11mr978171pgk.2.1614308291594;
        Thu, 25 Feb 2021 18:58:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614308291; cv=none;
        d=google.com; s=arc-20160816;
        b=UHdn9WZmw54pUrTjCEtJU/0tyTwovHEZwFIP1la5PTeXdS2mtnIhcaFko4/AJQpU2z
         dN9acWGbcpe1lAq+BcWx6RLAlZ9jxNUH05Pp+yZquGFm7mmBdEQatQlimuz6Di3ln0ys
         lWc2KTsBCeyNwwP/MvWwMHQ4tj5hSE9VzBwLnYqJQM9BjqG1eFH6zouEI3a2KlrN5M8n
         1e4alVWfb57EIppUQNMlwti463RQcGM+cHZq8v+hD9kEHAghVkhJnpgshKsK9QqsbT7e
         XYJ1PJhYqoR4Hb6D/Do5FW6rT+ufs7khzefLzoukNMFygq3k+qRSJB255ya5NsbAbrts
         jEug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=15fN6DKhCy5a7DnDQgFVSjSheB9UJvn2xO1l7gmsbmc=;
        b=fvV5sCZ5ePWVC+W7fPglNOr5pIUHlGdxbfHlwuqjJi2SZNUMEdmLH4Z+KBjaifHhMI
         vfrf6gMVwjPPUvWjNxoM4RnqYzopskWZM+bgvePD8qnJq86riKFW/l1XsuQltJkG4Cf9
         nz+RGgTSznKTKH8g/5+5cQdaDQTWeThxvUjwfdO9ajiQMxEWzSBazsjujseSfPyhdY6a
         Z+tOKu3Lb2MGZP6fuyrVSDKBHjaySFAUgYnYQprwzI3f8E5skLCkSQQOBij2DixHsxUy
         KkMsS0pIJmoDEZKTiGCMJNe6IRfnnbgXTeOPdjh5/HcCHEMnfyg0Y7Ajs79JkOY3hiOB
         Z5iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rU3rSatX;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r7si300096pjp.3.2021.02.25.18.58.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 18:58:11 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6EE1E64EE2;
	Fri, 26 Feb 2021 02:58:10 +0000 (UTC)
Date: Thu, 25 Feb 2021 19:58:06 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Victor MICHEL <vic.michel.web@gmail.com>
Cc: clang-built-linux@googlegroups.com
Subject: Re: x86 ThinLTO: BUG: unable to handle page fault
Message-ID: <20210226025806.GA19253@MSI.localdomain>
References: <CAG=0SSaASGLay-c-sT1b+-PBdnUxAMUtHPTevo9-qpOd8=yqaQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAG=0SSaASGLay-c-sT1b+-PBdnUxAMUtHPTevo9-qpOd8=yqaQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=rU3rSatX;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Feb 25, 2021 at 06:11:16PM -0800, Victor MICHEL wrote:
> Hello,
> 
> I've been trying the recently-merged LTO patches on x86, but it
> consistently trips a BUG when I try to load my wifi driver (iwlwifi):
> BUG: unable to handle page fault for address: 0000000200000000
> The rest seems to work fine.
> 
> The kernel was built from Linus' tree at commit 2c87f7a38f93.
> I cannot reproduce when compiling the same kernel without ThinLTO.
> 
> I attached the full backtrace & kernel config - happy to provide more
> info / try things out if needed!
> 
> Cheers,
> 
> Victor
> 

Thanks for the report!

Does the below diff resolve it for you? Taking a stab in the dark.

Cheers,
Nathan

diff --git a/drivers/net/wireless/intel/iwlwifi/mvm/fw.c b/drivers/net/wireless/intel/iwlwifi/mvm/fw.c
index 15e2773ce7e7..9d0cceee76b8 100644
--- a/drivers/net/wireless/intel/iwlwifi/mvm/fw.c
+++ b/drivers/net/wireless/intel/iwlwifi/mvm/fw.c
@@ -1083,6 +1083,7 @@ static const struct dmi_system_id dmi_ppag_approved_list[] = {
 			DMI_MATCH(DMI_SYS_VENDOR, "ASUSTek COMPUTER INC."),
 		},
 	},
+	{ /* Terminating entry */ }
 };
 
 static int iwl_mvm_ppag_init(struct iwl_mvm *mvm)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226025806.GA19253%40MSI.localdomain.
