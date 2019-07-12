Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7UTUPUQKGQEI6T7LCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id EB065674CA
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 19:57:18 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id c31sf8490978ede.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 10:57:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562954238; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mt8ZkVKdlChluwSnJRBQ+Al1BOSxU1Y4ApWlPTYqpCw9OvQtO0A+fDz/pdygnCR8p7
         qGcWpJlGioaDIhTvGfldwdKBn/bj9+srRJ/4hejDZxNbx7AgsUn0I7xw2e/uDeMThMxk
         2IiIilpJ/a2doYqPA60FQa4JFjgIkHqmKDg4RrNG72/VOFSqBD6ADsYdyZ4i2Cskwuic
         2fVp6CEwLm2sEBPhjE5vttw0T5X8T/ozlJyocT+lLAn/R0icGUzIw6e9hk8nzow4u6qK
         yXzOdoo9jXc2InNX3D318bXklQreuDhGQLkZCVKnYBowaxfxNwaV02nOA5nKEZDNpyM6
         bqpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=WWaijS1jIGz4+7Vz3rn2GpL5ObUmMHYZboHTh450sIA=;
        b=qV/9lELFhXMqLKDBvjyasyphjL8R+MhXWpVA3NZOmhUEv9oAhHmLSIzN5jqVYK48nI
         KYoL3zMnk9GClN+CxmqRXXQOd143ikHChVZBtjCcDP/FeIavBP2pojzo21Q2N+oumQX6
         edRfMfA07ZOp3uWZw4ZI26JCuPI3NkQXJEMBjDPwHNHqBhs1EwCQItu530Z1BF/Ss95w
         wSmkfE4cEyXEkjSdhCvYEFhYNCCTsfb68Y9R0Rf41PWw/UPJXN92codhkwbAIGRj7IPt
         7uk1C+D278s5jWIUcfpo30wTSj115XQkibS8azx9/4LLKcDHGb4+2+QrIEAf/P9OgqVO
         OQQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fvbNRCUc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WWaijS1jIGz4+7Vz3rn2GpL5ObUmMHYZboHTh450sIA=;
        b=S+IYVXFYyxDBUnEQ6i2VnOteHcA+eHkub1vXIm0jMwsmrpLC7AfiZxpYbxsVHrn3QR
         GF1GiwXOEcdsAjAixRYAK0Jcs4dwzNIsZ2DviJq+06+/yOy59KPdS0LqK76Yt58CrC+r
         Ay40yut32COCWGYU3RV/l78/eFPy2CAyXReYMbdOUBza3YRjR+V/CcJ9Qm1gMyfLGyy7
         AmsUVmGFhWF/r7g1oVPsnwg9GmIbfQvsTK/1IgkOQcXpL1+CAwx4/jqFCNHYK7xlYmea
         hkSOknAVtXInkTWYTI//6ApiqLeqV75k7aiGtYx+MAvTAYBYeV2CoNxuJTxcmYHIykai
         +bvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WWaijS1jIGz4+7Vz3rn2GpL5ObUmMHYZboHTh450sIA=;
        b=jkgwspRLodvVwgtYGTsOmNvcJBCcGyptes44Mb8jvJC7WvfbG72lAcnTOjGeMcZIpB
         dlXxKyPx+ko0Io47E45JL9VahG4K1c0NfkGj1kKCpX23FWAw9QjISB/2TD1f5BPX72DM
         Ae4q3m6m6pk74yDUFo0OpSu57PRKP2lX74wzvrFWjFxxs011a828BXY6hNUq5wPWO98y
         Bc0sf37pPFXy6A5LtsoMPKgKGZBYlvMtmpokKZViV1CfylRBALnn+QzaDmDtpW8UQaBn
         fN3ilAXO+ThxljmIWRGQA40ggL7xB7nLxKooCS9m31v3XCQl2dWxoUBBIZL7+dZMBh0j
         om8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WWaijS1jIGz4+7Vz3rn2GpL5ObUmMHYZboHTh450sIA=;
        b=NT+UqxSqDixSWkCnOyPQ2/Ax50qEKtgN+8rZnr3XGNYY+F/J66lB1gYcHo/Ez9jyvt
         dt04lbbKcKMwMre6vmX8U9VTfLeHC7CD1Xq0jibC9NX13XpILb4KkeMhcXuFjWFmlX42
         UN57Oir3uGZrpE05iXw3mvPz7xR3jA2Mm0CMGYzBe3AFiUEoSTTr2elOQo3pkukDIqvg
         0kVHcTsYNWjKazyBmsc/0JvzGqjyhdEryFY9iPD5WhU1S04SyYFowNx+Fi6FQLIVmHAl
         X3+LXpHyrD6YgcJLzE9S5/0Y7Pn+zbWv0f+8hD9qenKAXs3PesOGBE2uC2ewWjNLOyOd
         SSlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU4T3s+5JNxlUGsG08KSNbaNuyWgHvzOMjjZ8BDcQ4yI6K0qIwD
	fVUQn/l1IjgQniN9lZGl4SM=
X-Google-Smtp-Source: APXvYqzztSf3a2k33taB8/e9SmqtLC3EvcuSAT10S3Z96ye1UnFbKZbLd9Wb5/lTJaSOjzeqI9IaiA==
X-Received: by 2002:a05:6402:3d5:: with SMTP id t21mr10542304edw.13.1562954238755;
        Fri, 12 Jul 2019 10:57:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:61c5:: with SMTP id t5ls2230903ejl.11.gmail; Fri, 12
 Jul 2019 10:57:18 -0700 (PDT)
X-Received: by 2002:a17:906:a350:: with SMTP id bz16mr9596951ejb.296.1562954238331;
        Fri, 12 Jul 2019 10:57:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562954238; cv=none;
        d=google.com; s=arc-20160816;
        b=LiswVttcWvvx/Gv5s/F3xEozr3OZ6Pv6V7Js7AxweEm97QIY2HvxnvRyMoB9V21y39
         K6k69MUgUI2ixEucSs4WsHOY9th0q7o3/7Q96AxfmHH3cDbOzMliJuV2w11mtq7jq3vN
         BYf5cuOhuU3GNsAwer+YyyAI4SRxgifJZFWDVdUmwZAH5KJ+TpSAT/vXnhi0JoLLPdjP
         ++7dLw8F5RAyP5NVZqneMj53kiuqfJQ19S30LjXgCWH1fqP/WBBgMcuus1KhNV1u5+sr
         F2DFpwKMvBh3KaviAZJdx/0eTCEm22R/rgKXXubG709olsksLo/R9rYgd5lpald3UVOm
         gKYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=12w9YhMzTEceI3FF8gxwRGTZ2SJpBQ7cKMo01O/ztWg=;
        b=o2UBxVXgJ+Xacf/v3khWpjB6kQcOOOHuAzTSmBeCVzD4w3RfYrWvi7kHVBzfIXtQWt
         LoBs24fNLf2ht2C7xAi6imPKsPIebb4PjaxhVbNVS41hSBO5K/GWt2HAuUqEVvVvHrXT
         hwUzEL7PN1i983qSapHCH1djcE5dscZB/WHBf9p0aEUff3e+gxUJiWyOZzau9XiGogIa
         /r+ZJChKw3Gh6a79YdKO/j7RMAPI0WhE5CUuMXYZ1TNSWyuMwM0jYuAbgHA8BEr3qtD4
         1GdiIuIcENL0vKYRU0WmijaviP4zNFaGUaW8Q8QWjTBDViMGbNn9dRea5ALfBu8hVvzW
         5Pug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fvbNRCUc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id k51si641804edd.0.2019.07.12.10.57.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 10:57:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id n4so10854704wrs.3
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 10:57:18 -0700 (PDT)
X-Received: by 2002:a5d:4a46:: with SMTP id v6mr12758036wrs.105.1562954237869;
        Fri, 12 Jul 2019 10:57:17 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c14sm7204278wrr.56.2019.07.12.10.57.16
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 12 Jul 2019 10:57:17 -0700 (PDT)
Date: Fri, 12 Jul 2019 10:57:15 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
	Dmytro Laktyushkin <Dmytro.Laktyushkin@amd.com>,
	Nikola Cornij <nikola.cornij@amd.com>,
	Charlene Liu <charlene.liu@amd.com>, Jun Lei <Jun.Lei@amd.com>,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] drm/amd/display: return 'NULL' instead of 'false' from
 dcn20_acquire_idle_pipe_for_layer
Message-ID: <20190712175715.GA21080@archlinux-threadripper>
References: <20190712094009.1535662-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190712094009.1535662-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fvbNRCUc;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jul 12, 2019 at 11:39:52AM +0200, Arnd Bergmann wrote:
> clang complains that 'false' is a not a pointer:
> 
> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.c:2428:10: error: expression which evaluates to zero treated as a null pointer constant of type 'struct pipe_ctx *' [-Werror,-Wnon-literal-null-conversion]
>                 return false;
> 
> Changing it to 'NULL' looks like the right thing that will shut up
> the warning and make it easier to read, while not changing behavior.
> 
> Fixes: 7ed4e6352c16 ("drm/amd/display: Add DCN2 HW Sequencer and Resource")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190712175715.GA21080%40archlinux-threadripper.
