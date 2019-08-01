Return-Path: <clang-built-linux+bncBD2NJ5WGSUOBBP5BRLVAKGQELPZ62QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id F36827D616
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 09:11:59 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id e14sf15378214ljj.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Aug 2019 00:11:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564643519; cv=pass;
        d=google.com; s=arc-20160816;
        b=B98U6L4Xq3cV7zyp5nMKBLkU06M5cG8yp94hjXoH8YzGp4zYL1P0Fb6on6VmQQmelS
         ZQRj0x3r/mO8eRsU2ZRZuGnau2luRJi2igdGNVjzyp2sacqlHhGReurWvviv7D3XVa36
         O+afuHvb/vhyJhB4Z4cNZhWgKqk1I+PldYWH81r9mKJXO4dWtJyjIhVYBeipt7CCdoV5
         pRlljC/wTyUMv5C9fvLJrxLgrDOyWxflDYCQg1wfCa7fOacVc0N72VQdJNVHDLdmofNT
         RfCW/vBczQX0eW8rb0I8Uw6Fn8U7KM4Dfv5PEsP9RCtej1l+GppwvDT6y0x/Nr3lkU1d
         zPZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=fRctnKnzv3XlBbdrwxXVKRPAB9fQvQ+WBO7gSgQv9uA=;
        b=akdwWg0GNALazU4rQWQdZVEQEjtZHan1dPVmAsMDs35tqifLnw3UoGfoKDwe3FxC2+
         7NgE5o2dPmygpw/xYgDvSSnMik9Fs9LwJexQylX8Q9m46P7DHt06Zi5L0tVieXKQ79Xa
         sRDWIhgMeJRTMvuHW9iK096M7MK7B5+d2XMsYWEPdRjmDIFfrSdrykcuh432k2lSxVB0
         HSbm6fTrrHIXomr0FB+XkwNF9VgFnCWxPpQrfGCI3kWp4mkrdDgHIT6xAEDNn2BpQd6g
         DX552zPZ9mn3BB5mMC2JMIDCqxJFm5K8mt5vmayR+1B4/SXzvvoq7Q+ZIcyKyJ//KFpV
         K+1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fRctnKnzv3XlBbdrwxXVKRPAB9fQvQ+WBO7gSgQv9uA=;
        b=N4MnHEWFpKOsD7i42/SCKec5BcTQ+9qbZ3GsapvY1GRROa/lk65cR+ncwgXy42xkoE
         P/dENGhiKWursmWv7NakjyehpscUWjYFqWOqGR6lKb2RJGxbOD+nGrQSGAwvp/1R7581
         9ydcdFKQ2hC0X9zK90xXH5r4PDiwA+YCkOJ5y2ioOAZPNk8AJ97AL/6vFJH0KfNg1ekr
         PR0lcJ9pVNT1rLEVS9iJiAGrf5j0M2nadcoSMH8hGe7MeGK5UPW6Ge0lLd5I70JTduFu
         OVzywBhfBfmWbS6TD6Wj/lLMpmH7r5ZCkGZT1vJhQePlNeiSpO6Ek5OGJjvwb7OrYhSM
         Tm2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fRctnKnzv3XlBbdrwxXVKRPAB9fQvQ+WBO7gSgQv9uA=;
        b=clCVVWWj7y3+MZiU6AbkJeLREQEzeELa+ydeyK1802nqVoMTK+uUV3dHbXsPXVSGKa
         S1mqg8o82sNu3GtO+0JzGIi7WaYMNgVc4LOReXGjKNT3/BR926ue+CU9K402QUmD471u
         XZqQ7ZpqGVJnhvc9hIoNeAZhAYW3Y0WDtk2sdS0/ZFXFNGAyWTC2DCeTutAzUhlbvkaY
         huPzBH8/M3MKFjMEuY6fVi4TGDM0n/Oz+15RLXNl3aa0RIBWgrmi+oN5dUMIm8B3ZIxZ
         eOmKyMzv4qVWHWbtskURYmnOhhGo5WqYavovmBHjhxLAotLB+km4FjW22f3YvWS9j1nY
         +JNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWG0kSNiXy5TvTXTGHVSc0CUde18abBGMrEVWlC8ARn4eXSMbG9
	F8ayy0T8fAzeKzrHC77UFd8=
X-Google-Smtp-Source: APXvYqw82GRUU3OQ2zujc8BlypykU2qhbp7JS/Iq+7J8BBWn8pjgrGH8K1j69+dCqQBlN4Wkj7N4dg==
X-Received: by 2002:a19:5d53:: with SMTP id p19mr56275865lfj.109.1564643519489;
        Thu, 01 Aug 2019 00:11:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5213:: with SMTP id a19ls5923046lfl.8.gmail; Thu, 01 Aug
 2019 00:11:59 -0700 (PDT)
X-Received: by 2002:a19:a83:: with SMTP id 125mr39938730lfk.150.1564643519069;
        Thu, 01 Aug 2019 00:11:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564643519; cv=none;
        d=google.com; s=arc-20160816;
        b=mGPZAMh80IlGJQy2qrLnLvw/0vfp169wIwV6Gt8CoQHt1adpfDGju8pfgUKfuvzVnI
         erkpGPJMq9aY5cH4sH4/cv28kcUkRmUC6vsbCtNoziFKvAbLYA4qDNSJYtEKL1KHyWd8
         Z9kCcnaI2GJ5j0Z4ibEJkklVn5mT7CQQUz6iVVqgKssdQARrAY9VD1HakX2FGaOHmtpA
         mBn7QuUwytZLLkUTx+f3GnfZtE759NI56ZwKhmByY5cS9TsZoJtSK8trbQh663MD2bil
         0mfxfd3bEkfgAvYdgxbXX4u1bOEqa/+6XkPjpK2PgknCkTyQ02DI0UVXm4mg3RkTgLzF
         P04w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=IivE6KE1L4ACwwUT6FZBij5gyjdNHevqTu69TKzHZeE=;
        b=udM3rKWs1W/SsftCwsFXzjjlUr87blUE5/zxzwa8pJJwrrezrJDOMEr8fSYR+cwpNL
         YQST1vdmHIPjKRiFYkGEdmqisf9ufDeUMlD3d8mJx/oTcHqspEKv9Edt0BldFbG9Lkab
         gC0XX9qF6AhzcgUW+L/0jy7dwqNjEa2knCNRxRlbRJkLIL4icW8+oLkwL3dtw9/1U5+E
         IrQZtF31Rhde51KkyClcsRImb3GXSySucGmm6hsQ9m+MgYOVTlJv0IekezsM4MlkRl9+
         iz4roq8yNC1YpA8qH3Qaac5KIMmCdsL7e472Y0HwZjhB6IRyChfQLvZ5R9TPg8LLp5P+
         J0Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net
Received: from sipsolutions.net (s3.sipsolutions.net. [2a01:4f8:191:4433::2])
        by gmr-mx.google.com with ESMTPS id h11si734348lja.0.2019.08.01.00.11.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 01 Aug 2019 00:11:58 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) client-ip=2a01:4f8:191:4433::2;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <johannes@sipsolutions.net>)
	id 1ht5FW-0007nT-U7; Thu, 01 Aug 2019 09:11:43 +0200
Message-ID: <3a2b6d4f9356d54ab8e83fbf25ba9c5f50181f0d.camel@sipsolutions.net>
Subject: Re: [PATCH -next] iwlwifi: dbg: work around clang bug by marking
 debug strings static
From: Johannes Berg <johannes@sipsolutions.net>
To: Michael Ellerman <mpe@ellerman.id.au>, Nick Desaulniers
	 <ndesaulniers@google.com>, kvalo@codeaurora.org, Luca Coelho
	 <luciano.coelho@intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor
 <natechancellor@gmail.com>,  Emmanuel Grumbach
 <emmanuel.grumbach@intel.com>, Intel Linux Wireless <linuxwifi@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Shahar S Matityahu
 <shahar.s.matityahu@intel.com>,  Sara Sharon <sara.sharon@intel.com>,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Date: Thu, 01 Aug 2019 09:11:40 +0200
In-Reply-To: <874l31r88y.fsf@concordia.ellerman.id.au> (sfid-20190801_032117_118545_20A85892)
References: <20190712001708.170259-1-ndesaulniers@google.com>
	 <874l31r88y.fsf@concordia.ellerman.id.au>
	 (sfid-20190801_032117_118545_20A85892)
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29)
MIME-Version: 1.0
X-Original-Sender: johannes@sipsolutions.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of johannes@sipsolutions.net
 designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net
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


> Luca, you said this was already fixed in your internal tree, and the fix
> would appear soon in next, but I don't see anything in linux-next?

Luca is still on vacation, but I just sent out a version of the patch we
had applied internally.

Also turns out it wasn't actually _fixed_, just _moved_, so those
internal patches wouldn't have helped anyway.

johannes

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3a2b6d4f9356d54ab8e83fbf25ba9c5f50181f0d.camel%40sipsolutions.net.
