Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZ72T7ZQKGQEPSMHJTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA87180990
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 21:49:45 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id s10sf4406969oie.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 13:49:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583873384; cv=pass;
        d=google.com; s=arc-20160816;
        b=IFcYA07bbzqfJzTBsmPgvBN+UubAUUVB4qRC9JZrTlmqZWlB+DV/qJBh42pHAg8W7P
         Bwp/40flxvyAL3qRqDcyzeaCncQZhM98jk2wa8iuzPFuUzz/6WI1Y8K2wCVDsCsYiJQ/
         Bs1+ihmtLAP0zpXhXC+0XBdb6kh6a/6BHrIRozeXTyAHGRb9X8mP7gjR6VFs8uA68iGH
         GkypoMj4nMPKCBLkoCX6Y7z/WMXSc15QblOC1AM/YDj6fDWW3ONTUXpBHO3eScfCfUq4
         eakDF1ZQoSCfVopbFqzXDPq9f9qJNQOjVpkhXdmbCDYc7AeghMa489YnFTHfY0+tJj9y
         4xvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ALSCMTLFEGjgf1yzPxFyfR3vPrfkJYqFrqHxCSKSfK4=;
        b=F2PfqDOFw5h0IvmkZx4WPJiAu+g5a1YQUd7KvIQquuAnLgkHggUJcPtiP1CBCGcgtK
         hm8Ln7+l2XADq7lMnH6qjwFzAG5cXmWCgjkHfcP+lFVaQhAZMw19hxxezA25c4S9/9vZ
         F/1TH2GfsqFvmYDMRF0gAVq2maxCiRpnc8DiioqFqerxNQOn3nnM4H6Q90BGqifH+P0t
         1UPGL6OwD6uLGFVkxUb2BdXR4ijLL5cdD+Tr2u8S1DukvDBILutTYNAOHxuWGEaUH+ZM
         So6YaqXO/YwU5BEnZ6x2MQF7ipsyUW9hA9QbZrRcNcQsQ/FvoiQtSpPT9JfM86eBlzFV
         m1/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dOdveti6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ALSCMTLFEGjgf1yzPxFyfR3vPrfkJYqFrqHxCSKSfK4=;
        b=dlvcEZoN6AHNGC0Vrw3i1VUQO4sjMlSNX2Tyrf8CSl4JgATiGRjRy/pomP9spLJwfc
         qQfDfaeEo7jsDs1D5zwXtSibUPO9fJwMS2SnyMA05s5nfvwtUkJ8MgpSJWrYBkkA1vCr
         Ji0PeLyPXhMDL/8yLe5ZCN27M/vdsrNHEEywen+ZqYH3qKeek8NnmxFJw67NoFm3+hwG
         m905NGIfwSlRJZ1WEAorykG2hqvndezsrdWtnhvTazwf41+6FqpSYj9K28fNmuqq15Q2
         b8FZ4Bvmz3Q7RJpM0cYphkwxaAlv7a1U52k5hnmsl34rR5fJBWA6QxrAURk/hu0GXwSf
         aPVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ALSCMTLFEGjgf1yzPxFyfR3vPrfkJYqFrqHxCSKSfK4=;
        b=K9IIVlhTOqqMGPmEcH2KIxILwjaw1Jm1etF1UMnYVyS/ux0XwUGXNMGuBc5KbKW06w
         kCEPsYzOwIMLwO/EbieiHuEqH7qulJldca+dWO/FoSacsBPLrfdc8ptCxm7wZPM+QjWy
         UvvqV1VwqANKd/DGJ+bQxS9RiM/7tYCzCfiDCfnhIVkNQ5wMOX0Dzeabnl2mPD1ps+mL
         dmwshiU8RVTp2wBJjuWghJBuXLb9S0mb6PRpiCBWa3gOj/E70oLszIqqNCYPBnYT4MAU
         zGp7Q2ddM3tHSFXmOhjkaZVfs0Vt3/7hmPbjLep9a9eGI/dNdMuOkluYoP17sZke2e9F
         0tfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ALSCMTLFEGjgf1yzPxFyfR3vPrfkJYqFrqHxCSKSfK4=;
        b=GlucPXpvLboR14Bvl+uuR0eKXDuy99uQ4Aqd84J4ih3Oz9R34xBP/GPnWcszDoszC1
         dgyxzLpcNtuMv1rUVQBOHo2cINK8T5O6IxVZZbB+bEDNuy4hvIeYbofoU6kEP/4w9DGi
         CFH0FKfZ2o5qeKserko27aH97ncM/lANSHc2o5t35hw/WpabFDr6X/ffmem67V/6b8ZO
         cgia9Q8pAmq8EV4vOAwA6sHEMbGFcj5W+xclFeWeGAYljckTxSvSXw+pJRQXX8g7MBQi
         0horDf7bQopbJMCKspnxQliyYr8BogsaSFAc/6/o43tyvLByb/ncivXcXleErK3bZMZo
         yM8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1z1ZNzjzgAup8nuMDYdoSWW1CyrGOXXNHi9n8oGkMX0Il38wX4
	dhU5VP1aGDGVtpTpG8qDE9I=
X-Google-Smtp-Source: ADFU+vvkFqVcQo6AbGA3abO0DmO86MNaQyAnCFdf6vYUk8zEcKxeWJ+DiRa8FdmggSyPKAoFRprYsw==
X-Received: by 2002:aca:80e:: with SMTP id 14mr2500552oii.143.1583873384036;
        Tue, 10 Mar 2020 13:49:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6082:: with SMTP id m2ls4812682otj.8.gmail; Tue, 10 Mar
 2020 13:49:43 -0700 (PDT)
X-Received: by 2002:a9d:3b09:: with SMTP id z9mr18634416otb.195.1583873383716;
        Tue, 10 Mar 2020 13:49:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583873383; cv=none;
        d=google.com; s=arc-20160816;
        b=x1QgNJkV8liSGS6ljscHovfjYzrva8hDen40/0uXtRdypCN6dkNWDWEzd7f1wyXUuR
         0g/0ZhTZE4ipgac4XmRB/wgF1y68GqSbb5xmejTKjUC4Do/QNmVKeSrItqtVLImuakDl
         3gKI9nnYsAVYosu5isscTB83gVa70Xf++CoYW7YhFYsDbTorA4mpz1bdJgORnSVSsGzr
         TwEVQHdHOAMyX4qyNrY05Po8hDe0kcuz48LeVYHovl4xHLCJ3PTRJy/z+13Uth0Xbkkv
         9A+OTxRyveG/Ho8OffACR+oek748/dGONFoQSmcP+vFDsMDKeJWV/xs+pHaU+Ms9UeRd
         0fXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=mcvoPnKuCsxqZQen7vOamaSC8ZicKtkdOaJ+hpqk9w8=;
        b=Yz8G42cPRf3j+Ji67hM+iLEmSgUEwT4d7+EwDLJ9L+uDv5v80Mee+Hy2JMyqMnVQpP
         uLGNEfFe6AcsoiJRPzCijXufg9M/VDaGgBs2wT163dIujxKi/mnSZfnyKqlSE5HdCgut
         ApD2dJ7P2xR6ndV7bt38XQj8mCqaNGARo/IaQwapNoqgOk3V2p1ebN1C7CyjbWqVibEa
         VXdgOSXgRRBpGBHsphvsQ+hJ/aZrDMGbFPJOtCT7A78ny3pqEIepCMb9M9pnP18KV2rm
         NicDRadwMbm6q/UmxAEmlkEUdTPE9MTooGTpd+rkOSSi5TCfdFUIrdSq6wLcSQdoIWuT
         6h2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dOdveti6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com. [2607:f8b0:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id b1si580ots.2.2020.03.10.13.49.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 13:49:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) client-ip=2607:f8b0:4864:20::32f;
Received: by mail-ot1-x32f.google.com with SMTP id g15so8489567otr.0
        for <clang-built-linux@googlegroups.com>; Tue, 10 Mar 2020 13:49:43 -0700 (PDT)
X-Received: by 2002:a05:6830:18ce:: with SMTP id v14mr19190222ote.4.1583873383342;
        Tue, 10 Mar 2020 13:49:43 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 10sm4612203oip.2.2020.03.10.13.49.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 13:49:42 -0700 (PDT)
Date: Tue, 10 Mar 2020 13:49:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: rcu@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Clang warning in kernel/rcu/tasks.h
Message-ID: <20200310204941.GA53917@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dOdveti6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Paul,

It appears that the commits 37564025a3d7 ("rcu-tasks: Refactor RCU-tasks
to allow variants to be added") and cbd703932774 ("rcu-tasks: Add an
RCU-tasks rude variant") both add a forward declaration to rcu_tasks and
the rcu_tasks_gp_func_t typedef, resulting in the following clang
warning:

In file included from kernel/rcu/update.c:563:
kernel/rcu/tasks.h:24:16: warning: redefinition of typedef 'rcu_tasks_gp_func_t' is a C11 feature [-Wtypedef-redefinition]
typedef void (*rcu_tasks_gp_func_t)(struct rcu_tasks *rtp);
               ^
kernel/rcu/tasks.h:17:16: note: previous definition is here
typedef void (*rcu_tasks_gp_func_t)(struct rcu_tasks *rtp);
               ^
1 warning generated.

Maybe a rebase or merge gone wrong? Would you mind taking a look and
fixing it up if possible?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310204941.GA53917%40ubuntu-m2-xlarge-x86.
