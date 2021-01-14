Return-Path: <clang-built-linux+bncBCH67JWTV4DBB2NDQKAAMGQELBONGPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id A80802F69D9
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 19:48:10 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id w13sf4366594pgr.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 10:48:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610650089; cv=pass;
        d=google.com; s=arc-20160816;
        b=xca13HUo6BlypFnJ/fWeSGN/FW/mIKdgF7PYdYhgPnpPGguTBHQjmjAihPPGwqPXMy
         AqeKUmSIN1lwfOAsc6gPrs7NH2F1TqILR/xj+0iV+b0Av4zxU7O6ORthMwApf9mXp11o
         pfjw58/7ZzDp6I/LBJacWpNZ+SvYyHqNQjT4M0g7TKju53TkQaDGJTlldkhjtXt2AU1B
         Vd+YUA6wOrhUc5y3wMG3wZCq4PIbO8YixTURDTYlfuO6S9PoqR7iAjvRsfw+KfitV+1y
         0neWornIF5I71MyzwdjjGlW/TFNlwA2o47sjvjuhF3ZjUKvEUSUZoMPH3P5O+JKO8XBj
         1dcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature:dkim-signature;
        bh=p2guCLvCO1lGxB0xhs1a0C9ZAUt1oLCHvG/uvI9Wix0=;
        b=LWzdiv4W12jBuG4wFY5H6poRbn4b1twMVFQyYVkIX55smdxuxRaUGmFKaGLniruaFX
         HCUlSegvESDQ5PiPzhZECBzfpd47XTbT95wF7kv9fvg/IoExMTH8d87HsDQcBpyVJeLx
         IiK+rEy4XZKlbLvy2IYwoafh/qgBWBQF10SWBgGLqmP3HSXQTkxv/Tiqc0MhO7l5rs59
         mvcTBP6eAz1fcUevgxnkyQTKNHcoBI/wPLj43y0tciYcNwWzrl8OMYMR0+jBPD06QHjG
         BFZKRPjHv35xu0fHhh1o4S+MdhVtC4Hn+pmYt/GQKp0buxNyQcA55nDbvkgqwhR+NrlO
         tyyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bPh8W7/i";
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p2guCLvCO1lGxB0xhs1a0C9ZAUt1oLCHvG/uvI9Wix0=;
        b=bcaAZSlRBoS0TUjUBj37bHKflohGQwC+1zpFP6VBLsJJOcyTNtQsC4noaRtoU86x08
         NElRPfTwiTN12q1zWeZAW4GX2MLYk6AEx4LY9GayOQucEAiXwdM1urwyRb9GRWj9waDw
         EDWUSfw3rFPwGPnZN7ZjK3eDoGDGdLmlCocdIpcCMkntgR+wYgjRvc9YH97nPYOK7QMg
         jdlbV5w1lCd9aFZdu6sDPW9xW5x2djRO0qOd+Rog5RU70w0LotJr9pwiWcfJHS32SgU7
         uyA4yv86VZGz8XnE03PL6xL2KxvE6YYEpG7yw2QOiliNrpUdDJmqLqtrkIR997BKErjZ
         2O9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p2guCLvCO1lGxB0xhs1a0C9ZAUt1oLCHvG/uvI9Wix0=;
        b=PY6TYeH2QWvsEIw8I4NvddgdaxQ+1U7nGr+9tIVOdxwVsg9nEMgz82wIHV0WCAbh6Z
         Tg4fff5s2RP3Ga5zjU40YhbVi6sj15Xtck2SMInTM2xku7Jor1u3xHsE6yojTu/v9OyR
         oOUGlS9fR6jJtHug7YRPQKdMU+DoqRQOXVUP1MqRR+8uV8zDrhdz2uIFeWWLygWSj7+S
         6RtOWr/ug5kA+kAk8ArrUnHV5Q+BqRerrrQKiSyPfOMTxE/Jsdy9CB2jTdVRmxZYr9sm
         BcZ+sybYy5KoU/xfcsS7yrXArcD90//oZ94hZiKCfAHFHSQDBGMh4WctdmQ+BqBHtBJK
         GLcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p2guCLvCO1lGxB0xhs1a0C9ZAUt1oLCHvG/uvI9Wix0=;
        b=VbiUdYJODzN/aWZ59zngLWyh7uHYSDLVYIwmNbQ0Smb18aSaqA6/uw6QdrMvG+D3Nk
         UXf9hgIIDXN+amJeUj71SM3gdWaTx41CHLyxMWG7hpnWCUrzRK+OUI057aWnUhGmO74P
         TvjLna2EIl+I2ZpSEaYbSsn4+ABVgLvewk8c4Hiw7NrKUieQa6aN5lU8J+2dn5nhRPOa
         7fA01UhikbsHgJN6GGXXwzyI+htc7o2Sd14Lj5AM7ROoYUGMAUgpjkXBWSZOmP/4iReE
         5bg25Wcbvlg7YEE3gSGvNZ24mVfvykT2bqxfCeqDVhHAhkyWYH95xvB0DpGEnDdoJi7t
         aO4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Osepk+tNmgEfK47lraMVORKKXH9Zuca/ha0tRAy/1xqchaNAR
	/FBcQI6Jiw6wF5JjMuMdd98=
X-Google-Smtp-Source: ABdhPJwrMMdN25ksgZEiHcI9V/bdldgswVBtyf2FyFQJ2YEDX4cd28oAym+TY4jzF98Pp/hTqPAcxg==
X-Received: by 2002:a17:902:834a:b029:de:343e:adb0 with SMTP id z10-20020a170902834ab02900de343eadb0mr8582609pln.28.1610650089276;
        Thu, 14 Jan 2021 10:48:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:22d2:: with SMTP id y18ls3113633plg.6.gmail; Thu, 14
 Jan 2021 10:48:08 -0800 (PST)
X-Received: by 2002:a17:90a:12c4:: with SMTP id b4mr6262892pjg.234.1610650088617;
        Thu, 14 Jan 2021 10:48:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610650088; cv=none;
        d=google.com; s=arc-20160816;
        b=NC1qv5QvJx+lSX2UdECZCdA2VnQ98gXCjz51zHWjOwtacmAiGEHVd5sZdvlhblrb0F
         jSSdMxkfAKm+JSId1/Ue4zt+pLUI2i2Go5VdR0BzOUFl0IQH+MGHhU0pXEO3WcU+Gqc5
         XOxIC464rhGTmxJ3u80IGOAMcK0Q025EQgIpmf8Dle4ABIxmVEsgvpsW0jSwSF5Nx9cV
         HDLSCjVThplDukS/OW06+9pgpiEgVmY3bKrmzSfTrk67tLt+md85IAFa7XsMd5DciFX/
         /tyia6cwpZy2U0K3bQyP3u0aiFJIJDSnbG3+X1r6/y8QqeM7FuAD5hk46TZWXl8h4W5X
         3VaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=33yyNVQErzJPfoGpCs99bWzmQVnoW+dJXia/2eggvg8=;
        b=OuA8vAXPv2KgevkvnQFRHik9UI+9b9XE1C9GXkUz7Puoa036m11Kc081YTaix2Pl/8
         6JH56ZtkUGJQnqISyCnpvvJQOGtM6GFwkxaqARLNv2ns5U+Xu5rahds/vozyWq09cW6G
         Oj7qeyUcidZMI3TJpUvOomWYC+sNnWCjIfPax73Pe7pqUFLrrBHHAGlWTv8V1k0uHkvE
         BFG5EHjWy6eFdIrkn20mFsXWuL8/owBoBFbZZK3f5hFYFdSuNTHWmjkZlxFepf52H8Pw
         W98ov5pjATlqfMVV8zyq5DobVdueVuUEvDbvVwtgP/5+DwVeTJcwN7ORyHgLfhrtinT1
         lYtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="bPh8W7/i";
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id b18si392014pls.1.2021.01.14.10.48.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 10:48:08 -0800 (PST)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id n25so4395529pgb.0
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 10:48:08 -0800 (PST)
X-Received: by 2002:a62:1d43:0:b029:1ab:7f7a:4ab8 with SMTP id d64-20020a621d430000b02901ab7f7a4ab8mr8610614pfd.43.1610650088172;
        Thu, 14 Jan 2021 10:48:08 -0800 (PST)
Received: from [10.67.48.230] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id w19sm5935750pgf.23.2021.01.14.10.48.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 10:48:07 -0800 (PST)
Subject: Re: [PATCH net-next] net: marvell: prestera: fix uninitialized vid in
 prestera_port_vlans_add
To: Vladimir Oltean <olteanv@gmail.com>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org
Cc: Kurt Kanzenbach <kurt@linutronix.de>, Vadym Kochan <vkochan@marvell.com>,
 Taras Chornyi <tchornyi@marvell.com>, Ido Schimmel <idosch@nvidia.com>,
 clang-built-linux@googlegroups.com, linux-mm@kvack.org,
 kbuild-all@lists.01.org
References: <20210114083556.2274440-1-olteanv@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <03979f1b-851e-d5ff-2928-323f5aed696e@gmail.com>
Date: Thu, 14 Jan 2021 10:48:00 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210114083556.2274440-1-olteanv@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="bPh8W7/i";       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::535
 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 1/14/21 12:35 AM, Vladimir Oltean wrote:
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> 
> prestera_bridge_port_vlan_add should have been called with vlan->vid,
> however this was masked by the presence of the local vid variable and I
> did not notice the build warning.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Fixes: b7a9e0da2d1c ("net: switchdev: remove vid_begin -> vid_end range from VLAN objects")
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/03979f1b-851e-d5ff-2928-323f5aed696e%40gmail.com.
