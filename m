Return-Path: <clang-built-linux+bncBD2IBN4NQIERBUVF2P3QKGQEX3MYOUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E4E20A322
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 18:37:38 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id y16sf7152018wrr.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 09:37:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593103058; cv=pass;
        d=google.com; s=arc-20160816;
        b=WWHUEJEsrsn0arbO4vugHyfuTQfPIbSa85tIawfFEGvwBkvaUYl2syCM0Kkpwv96F+
         2qDAD9B719cRzD8PS8sXUppJS3Ps8FOjXtllqgqpwWDVRg6jfh6sEvrNMDkunWjD90/1
         O+XbwbFdYcgk02XMhprOMJuWsWkBZ/StUr+Vb4BcRWRa5rbn+lX8KqGzdaz4/6R+cSSZ
         Pswd8V2OAo+YO1i+R5qRGAAKLhgo/qR2PmrpHp5VdIAOUa0F7IlOfFUkBILCk/PJD8Y4
         zm8emAcvf+fPpX5w+TX6XSQGqwys+3ztoDzhaMTnNwpA0GGRDieb8W7KoocH7Vdmb2nF
         +g/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=yafUqGGMsKNKIkyMx/D6nwelAi9Z7HI/md4+yx80v3M=;
        b=zf8gz9dF0wuI57esZLNd0WmtbMjOBl4Bgdx5RvSkFR16EnX2YO2QBKTxgN+4KGF013
         pHNdDodH6tx9niBNljGB0TlH7BE59qJz2UXhdjw71Ell8UfFZIeglx6upLBmNsT0Ptq9
         Ka69kTvpdyqI7CI0wHJ5WEIJ4ZDrYjgikvgFleTDBSS9G37clwhzM6FNGYvKqdgwbFHQ
         Cd3MgiqVXHDiQNooDKB3O4IPffRL6o7ZMTJidfkkcmMsquJsv4xDlPexIy4fNzIdysH5
         LueaiYWuBBc7QArgxZ4NUUPUYwyavpbaSdwUnJfrln7Eo2X708gVcBgW0him/lGUUDKO
         RBEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gQSZ2Bq3;
       spf=pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yafUqGGMsKNKIkyMx/D6nwelAi9Z7HI/md4+yx80v3M=;
        b=bwd3A0UDKQx5UlVIUsOlu5TUsv/tXBksO8W6bdjz8GsDa2EhUfln3EvLet4b7OQmfT
         fNlOSdIUDEnMwshDgttvH74QXn6fc9ucn8NfXIXI0ccw0bwb9Jv6R/dTFojmHq0y/0g+
         xTeKL7ENjhRqGmssbRnuXotmZar99H0vDWLlBLtLNwnfNACh7yXaFAwvmDaELqUJyxz0
         PaWWqHQe1iC8ZlCjMYtu0lzppfWPoBMlkWK6sj0Dq4UILg7AerBIOTi49a0Rp/HE7G5x
         weu+1w0oeY9eM97syPjXT3aZH6ie2X3q6mEunWkKU8Mho5kOUdteKHYam0WVc79hX46P
         8ddw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yafUqGGMsKNKIkyMx/D6nwelAi9Z7HI/md4+yx80v3M=;
        b=FbOBI1I+hm8vXMiTqIK3T3LyJ0YBPtoJyjrhIYYPk8oVWYpD1JC5SAQ155SIyuNdd0
         vUxZLoDt8B3znqhtvDRRJdxXAhmLbM69Lmv0Jm8ypBzEyifsI95VKtOCoViLyJ1RyW9t
         AvHUemz/Lde96EiAdmoP4m5hCPWk6ZgjWNYi21fCgNY66p7zavq6DnY4QXLHVKOPTtJC
         a9DVc2N+rBA8+Zc88Bi4lEgd1BGdhXEkElAHOIxM8om3zw93UQZoGFAAESztaXiKqj7s
         riY/PUCdQZAuIRClhHWWhBAx5RYkRfgQYjaWR8oZIZ0TeClAA84AhHYbHPBkaEecSgGb
         2iDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yafUqGGMsKNKIkyMx/D6nwelAi9Z7HI/md4+yx80v3M=;
        b=Ye8d5r8Bv2XVM6kCMfBoVWMsE/esVzUWFz5R4PA6WIPNBfYtAgVYQqzusUtiayKct1
         CIXxbGj+MC/bC2hEQYxh3XKDb9bpoyepdS1bXzNWAxsE7YkjPVpeE0NMAMA3PjMBQnHh
         mADeNGFmVqTIAoRyaSsgm5S3YW9XypuoTp4EHiv+8B9sSjjSa1BiUHA6hKFxzP/flzPv
         p7Ww2X6w97X1Dazp6RedTDMyDrzaKhx/MSFILFSerCK8IeqFPa7LndskmGL9XjWFgHTQ
         GRGpNC3EV5LJdRugfurXODdA2/quQMUU8JDeKIB70l19DU13ztal28tUEoHDqPqtsXhv
         mvmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Dqx1sgEeE9A0KXYBi8cjp/tosxMKnBo2GExAl9rx9bVm5gmFT
	NCChrDK3SeO944LAkXX8rAs=
X-Google-Smtp-Source: ABdhPJyFqnVUOfNpc7TdOE603SClC5aLrFpuntXM5rrtWN3NS1JnkLZOwrVH3ynY5eVGVPl3mm0dhw==
X-Received: by 2002:adf:efc9:: with SMTP id i9mr2306851wrp.77.1593103058558;
        Thu, 25 Jun 2020 09:37:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ca:: with SMTP id 68ls1008026wrc.2.gmail; Thu, 25 Jun
 2020 09:37:38 -0700 (PDT)
X-Received: by 2002:adf:8501:: with SMTP id 1mr41246716wrh.153.1593103057980;
        Thu, 25 Jun 2020 09:37:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593103057; cv=none;
        d=google.com; s=arc-20160816;
        b=DVBfJyiT6FocCxx2PFVWuUFusxUcTiMOBLNtQfp9JlhHsJ3YZJ842uEFX9VnYoW0O4
         g6n4dOjmHnVzAcLhDWQv1Qc6zEnD04q97ABszqJ5qXq6zf5TMfxhs/M+cv9D9rMhFwZl
         TWmUUUoWU2nO0Tlk7SLd1nAnjUN3xQTqiMNhY3uR7CvqsgEll9AhEdJqkbaZdqtVkVA1
         lY1Xw0u1gteQx1Lt5crnYEYTQXsUrSFawPzDEVFOkZlE4fFW05VvGQOfv0JFG9W9/NGh
         7UKvjnNJLboqqPdIVRH/ZpEMaq3uRYSNaDEe5tmwqKmBoZZDEXeba74BLJP2UFfgXXWE
         6uRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VwAmIR6VLB+YcfnphtZyHLrRryQdawnk8xblq99lNpw=;
        b=awNN8VqPdkW9gdrHUA6YdFHgwzfGgM5rgRyGebbg3uOXzG/Fjf3KvviDbcrOQRwJ17
         gzC6+mUwUd2jFGBRjUc+30bgqEo1wvlQfaZ0GZS78N2PXThypTZ0nsb3wZHFXkUwaeKW
         T93/JpA21XtLNY73WimCzmwOS31wLZV2q64vyMMm+bgmuXK/rmP2udtE9gkwPST8r8kF
         +D2ldtov0h8O+f35cyTG3i1EB6MyvNlWNvG2TI3netyBhVBrmQMnBwqPn8plq/LyXKkp
         q7Yl8M/J9wHpToFlVqaVQLj58KYwwFqa7Z4YfOTm0Ah8kjbGRKJZzgHXd7ipvez/4/lU
         q1Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gQSZ2Bq3;
       spf=pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id g141si548149wmg.0.2020.06.25.09.37.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 09:37:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id dp18so6577398ejc.8
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 09:37:37 -0700 (PDT)
X-Received: by 2002:a17:906:fcc1:: with SMTP id qx1mr12562143ejb.379.1593103057718;
        Thu, 25 Jun 2020 09:37:37 -0700 (PDT)
Received: from ltop.local ([2a02:a03f:b7f9:7600:7032:f41f:3b67:e84b])
        by smtp.gmail.com with ESMTPSA id u60sm11052049edc.59.2020.06.25.09.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 09:37:36 -0700 (PDT)
Date: Thu, 25 Jun 2020 18:37:35 +0200
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Marc Zyngier <maz@kernel.org>
Cc: kernel test robot <lkp@intel.com>, David Brazdil <dbrazdil@google.com>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Julien Thierry <julien.thierry.kdev@gmail.com>,
	Suzuki K Poulose <suzuki.poulose@arm.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	android-kvm@google.com
Subject: Re: [PATCH v3 08/15] arm64: kvm: Split hyp/switch.c to VHE/nVHE
Message-ID: <20200625163735.yneq6lzpmfst2pak@ltop.local>
References: <20200618122537.9625-9-dbrazdil@google.com>
 <202006251244.YDWclRrq%lkp@intel.com>
 <d807e83db1f1052378b6998f683e4617@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <d807e83db1f1052378b6998f683e4617@kernel.org>
X-Original-Sender: luc.vanoostenryck@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gQSZ2Bq3;       spf=pass
 (google.com: domain of luc.vanoostenryck@gmail.com designates
 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
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

On Thu, Jun 25, 2020 at 09:16:03AM +0100, Marc Zyngier wrote:
> 
> I really wish we could turn these warnings off. They don't add much.
> Or is there an annotation we could stick on the function (something
> like __called_from_asm_please_leave_me_alone springs to mind...)?

There is: '__visible'.

-- Luc

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625163735.yneq6lzpmfst2pak%40ltop.local.
