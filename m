Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBE7BZGAAMGQEMVPQSTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BB430709A
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 09:06:44 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id j12sf5194766ybg.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 00:06:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611821203; cv=pass;
        d=google.com; s=arc-20160816;
        b=a/Q1+CFOBxCo0zt/K5aRJL3r2cArk3DmfL2Tmw1+XTkA6DdYEFnkDNhuM9gLyvzSjA
         aU9g3BSF2v3YzprNPTjpIdTjPAUEtnBJEuefIJ7XoL0RhJ+jMi8aDj1RV+makA1dAEPW
         /HRewy0Xh/YpaoRHp3JCimeM6StNizigTCzYtesOQ2oOsj5cm7sLp/OT2XXZY3/NoUUB
         kGENISmpjYjKhH6WvJ2oEzA/DhSbkSTp42JueFxwHJCqUQSoVdzrXwlrE9yU82CAf0NQ
         zYfC7utxcQwFj6PtMveav/9EzoAsAR5CcvV9H0MRH/3PVU4ivVcbAOPwokFuR2SkEG74
         n37Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fXad2XXMzgxHLAAN7b/jp5C0aNW9YWAubNnFx3qiydA=;
        b=bTBmq/2/Ru8mWVKZC9gANeZx7vpttqXFWJp0cd2QSH8xqt7kG9xa/tiYxzhcjf1XI4
         d59QNZZlI4UIbE7+zXGYd+OE/jfwvK6+dkLCZ5rudnVJQ1GmYCTaakYBuj2HWA2Buvin
         V/8+vtvrNs52oQCzwojDueXh4tRLjZsCRRLEqki8bOtqD8oReFMHw2PIqL2pHUh4UBAL
         HmWXFIs/fjZs1X7+pFJx8jF4RXT7UGyo8gaDHAjZUnafKz/KFMp3z75OxgWBQvHUo/OS
         FV48Vj78J+b25wgszNxv6m6I09hlNu28TYr+yfDo7H1+WgNhGjeCcRAKkNV7d4enY1y8
         UPMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=XgiIPNWS;
       spf=pass (google.com: domain of srs0=w6tu=g7=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=w6TU=G7=linuxfoundation.org=gregkh@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fXad2XXMzgxHLAAN7b/jp5C0aNW9YWAubNnFx3qiydA=;
        b=N46lpFZBUA/ql8G+HO2VzWsM++nAIgBJM5Esg7Shi7Nu4SvvLnnovOenXYU96fbNLB
         g7+oZ7xIMUGVk0sPAJSCZFU73xDnabgQKV+sOjFlRRc9raDzP8+GGdSCAHlU2+3tRw/f
         1NTcqUpyL79Pz5khBIP78NOXMIj1toOexOmn8+v2r5+jx4fLhgQLGteNmCED5xejMKyA
         duR8UdsoSDsFylW+volrbsuoDK9XP1CuPXe7qInVncXET+5EpJ6bcInJaWUPnJOAPPeH
         LfSDG4e2DgOevRzi6AiQ/B/69z9n0ZE5jloofmo2idI4WQDuN6q0beuY+NZMrxF2NRcE
         rbIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fXad2XXMzgxHLAAN7b/jp5C0aNW9YWAubNnFx3qiydA=;
        b=Ym/Vjk1mccXnqtFT1DB0GaQwpbD8/COAd8v/Nmfj1hEHvbFg3yz+9E0n+yPwRtMJyT
         pJMxKyvbqMeg5UXbI6e1fl2y2sVjmEgkmlBLr9rOE62K3YUkeEnibs/BNTP1m6wpjqtP
         m7c4RdCWRdqPI0G1E6HmxaJvLBZTaclGj9eYq19Avst5gUR064n5bq2mfa/l9Cp99k0p
         cucP+MGV3Zw4T9NMeSJ0WWN2p59Xn8m16kEMNcLsvDRn1AQ09ihgdj9QqkIsePgEfKG4
         m/b7HeTWp2CFA1EGJgg1rPAPJyghEZiVhOHfrR5wigTU4vh/d/N07Ww5bpzBeve4AX3k
         pTsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bwt1+lkKyicYDUcJWagap0xssQ+zEgBynzheYIaf2a6tePOGW
	reO6yuULe0IWwrZAc7wZxho=
X-Google-Smtp-Source: ABdhPJyVmnlivlU75FPLjWnZKkCK2RG1SxZyMD0qJOdLR29zE3GZRFtTwcLVgOPEkCgrH5PpuFDw0A==
X-Received: by 2002:a25:b116:: with SMTP id g22mr22184580ybj.447.1611821203378;
        Thu, 28 Jan 2021 00:06:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:828e:: with SMTP id r14ls2322381ybk.7.gmail; Thu, 28 Jan
 2021 00:06:43 -0800 (PST)
X-Received: by 2002:a25:ad8c:: with SMTP id z12mr23977232ybi.143.1611821203004;
        Thu, 28 Jan 2021 00:06:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611821203; cv=none;
        d=google.com; s=arc-20160816;
        b=0l9rQOz8TYmfY71vwjA4Rpjd7Ug2Eg52r75OFj5ZDJX8cwtA9qoSEVFb221Z8iJKg4
         4FcCB35SdmmlIcR3tfBDMd2AuFXwMAWo3OChQM/aQ7GX4o9hC743jMZIaq9FFcMSivVh
         soVe0VCavsQ63vp0QB84wCzv6WvmEXKtzj/Kfl/nZsw/ZSuFAhvfQCdSnu566EHUcZ5z
         0/smNDtZgXAFPe8/6rRlHP7XI+6hd9Ph/Ztt3vyceZwIoNQ4n2jdF1QXAd1CdG82CeSL
         rljLPONRenCSdfVSrmHPIQzJRR3t40DjGDONGWNIAvV4N/oEklakOtZ35lxG1to0Dea4
         ygIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8OEMvbH8Rm+dp7Zb7Kl7VgodqWF51aYnrxenZUULeN8=;
        b=h48HrLe/d49WYnNWleyDHhmSc+IgvPnISxnB1LumVB1jmhha3vzmq2mLiluUR80Dju
         h/DzFcJqKXZkq0Zw0PjHQuxh88/G3RtaTLbBUE8XuGx9i3hjjiS0s8TL8p+/o6aLG9Nt
         szb/n9yGBznxrAY4zFYUB69PcNMHXN2S2vwBEClXw29DQX8fRwhktDo2vHI5ugF2BpjW
         GVv6JxGPrTPzIyKpUy48w7GSJ42jkRGQ8IOp0gGVkNg5sxBOohJhBp9ZKeG1jVmkIXoj
         5UfmZFfptbkzmLtnIYjwnf4gdNQZDVobQQhWV6XWhOzQt5LtH7L2eqMy394OlN1t/NtD
         Cl9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=XgiIPNWS;
       spf=pass (google.com: domain of srs0=w6tu=g7=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=w6TU=G7=linuxfoundation.org=gregkh@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x13si411228ybk.3.2021.01.28.00.06.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 00:06:42 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=w6tu=g7=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E29D064DA1;
	Thu, 28 Jan 2021 08:06:40 +0000 (UTC)
Date: Thu, 28 Jan 2021 09:06:37 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kernel test robot <lkp@intel.com>
Cc: Scott Branden <scott.branden@broadcom.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Desmond Yan <desmond.yan@broadcom.com>
Subject: Re: [char-misc:char-misc-testing 33/62]
 drivers/misc/bcm-vk/bcm_vk_msg.c:56:35: warning: operator has lower
 precedence than '|'; '|' will be evaluated first
Message-ID: <YBJwjTi77iQWwD3s@kroah.com>
References: <202101281343.HHBfhVkw-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101281343.HHBfhVkw-lkp@intel.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=XgiIPNWS;       spf=pass
 (google.com: domain of srs0=w6tu=g7=linuxfoundation.org=gregkh@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=w6TU=G7=linuxfoundation.org=gregkh@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, Jan 28, 2021 at 01:42:55PM +0800, kernel test robot wrote:
> vim +56 drivers/misc/bcm-vk/bcm_vk_msg.c
> 
>     52	
>     53	static void set_q_num(struct vk_msg_blk *msg, u32 q_num)
>     54	{
>     55		msg->trans_id = (msg->trans_id & ~BCM_VK_MSG_Q_MASK) |
>   > 56			(q_num >= VK_MSGQ_PER_CHAN_MAX) ? VK_MSGQ_NUM_DEFAULT : q_num;

That is a pretty horrible chunk of code, Scott, can you make this a
"real" if statement please so that we can read it?  :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YBJwjTi77iQWwD3s%40kroah.com.
