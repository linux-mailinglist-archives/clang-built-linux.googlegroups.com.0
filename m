Return-Path: <clang-built-linux+bncBDY3NC743AGBB4HGQGHAMGQERMYNETQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB1247A942
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 13:13:38 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id p4-20020a17090a348400b001b103a13f69sf9619910pjb.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Dec 2021 04:13:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640002417; cv=pass;
        d=google.com; s=arc-20160816;
        b=g5GIV2prGHJCjBmBtFZeoWuofCj+Uje/82ICOWS70a3oSIhPB5I1LmtpwK/geeBSUV
         kxXZzRVA495vN4rFuv5VPiqEKeaAPWFNixjG7S++MM8YtNdVMxPGok95ple2ru8zstmn
         GSSeCFn2Am4AzNumaFhOMWHp9irImlv4jTtWbylggp0lxp8lus+mXx2w4V2Xffc8Ra90
         jEUnux4+zRA4BkD5fNlOVB6aMROFGTQkBrskoqk6PiCwb3jJAcclmwJppeudUJ3bAjCs
         n5gXUdPsMM5neiqVZZpdWxkXcbqEoiiRwINjNkSvab18OgrBmkNERV1/ofP2NmcVycRC
         okOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=XzxhSakgx6tQJ4AJXC4DLE8HyGfcA/wPkt9DVngj108=;
        b=XFaWZSemqg7d1CzG1ZQ06Vft+SolnopFZza7SGOYs7+qsyeqFqj+lrsdsKkbpiCmG4
         ee4nFr9+yLEKpIgfe6JFk7DSVFhWtigO6b08qAIJYo+opKguUJTm5QKoWxwTveTeLWay
         BL/+mnZFmcRK4GgtfjdmQxRSVEYp8VyrdBreX3SYqUnKnJZkg8F086C4eYKB0Wpx8BgB
         O9viC+l7kw0VGcoIja2Ms9P7TfauMJ10YZH5hFwcQF5i99dZpDaEtPAPfPdilWc+OIdD
         5wYZ9x62Wd2WJJ4+q6ucRmEfNB8Ag6CvxwN+7A6pGkzuoU28Lu7gv8QrJJyEGAr6B+E/
         ykxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 64.99.140.27 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XzxhSakgx6tQJ4AJXC4DLE8HyGfcA/wPkt9DVngj108=;
        b=QlNQfREIfANylQKdBbnYFxzxiboJUWBiYI+pBjw9BuWdX7tReNnzrF0V4mUeVWcxEZ
         TF1ce2LHzjgGOfxOcRnISoY/oTWJ7C8hG8b1h3Jdcu4nGkGkA38gGV3N1Z4o960C17qL
         jouKSdd9cTQmwZbolaUGUUfoNPKTnWI3d5QWQAhRjyXMlg4B8kaeMM7Pat+9t5O2QAca
         rZub3/a3UDaCRvcs5WaIKDwd/eBNt9cANLmEXkTfzFOqP2A/8V9qdZzSFlWTvdpmlniH
         sKbnC2AJEcme0mPXBVd5T34ITqSr8B0TtJaBdSBBWNWH2Xa2otV+qK8BYVwcFitoETPy
         s8LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XzxhSakgx6tQJ4AJXC4DLE8HyGfcA/wPkt9DVngj108=;
        b=5pPKOUjn7xAquRPd/t35SJjThG54h42lfAZlnot8B8+PZ83rz17VZ982UJWuMNDCvZ
         hSsC9PoKkIt69f+tZtdM1omdjnGn8jOyHJoApG9T+rU3sSuB05x23WKvwxvAvLOwnFGQ
         hXE2/RO6QbJKBmV6OZvqTwMUsUpPLvcpMjLlEZ8HwH3lJ+ORP9UIy6OXHEZlzw0przAT
         9FuwiikG5artEgNnhx5U3ekhBCrmnEJTLo3uGqv1T8GwDt+vr9h/AkCyL431uHkpOKql
         yAhGsBuEhaV4jtrAzAEpPvT16r55HYZKaS9lJsy3TEFpndOk2TgKXNsMAxqhTYsXslk3
         CLKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VLpbnwqXDy7VTsS10F7pbpAboHVb4QBZ5D55QvzsWMmsaw6GY
	F26yQWj595Rg+lSYCsuTcbc=
X-Google-Smtp-Source: ABdhPJwKwrLaoaJ5YKvNGXy8ffR8zXeHbwjj6n6fW3eFPVPd4BfGoyTnCemqJkXrJUyrS4kb4SV9ow==
X-Received: by 2002:a17:90b:4c4b:: with SMTP id np11mr3956356pjb.32.1640002416850;
        Mon, 20 Dec 2021 04:13:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6002:: with SMTP id y2ls11152523pji.1.gmail; Mon, 20
 Dec 2021 04:13:36 -0800 (PST)
X-Received: by 2002:a17:902:e805:b0:149:95a:1983 with SMTP id u5-20020a170902e80500b00149095a1983mr6328557plg.9.1640002416218;
        Mon, 20 Dec 2021 04:13:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640002416; cv=none;
        d=google.com; s=arc-20160816;
        b=xOjE+x2boYtqH8oQ1fNnadJzwdpCi35/dnZElmLqh5GJy5rxIXmbWZ2agucrwFf6dK
         Ae9DCmjKzfxKJCx99BcBgbi6uNYsgbWWSZn6QELYyKMbLmfqLMmQgM6dg4QKDNZ4cR2I
         4jb0u5uXmXRfyEt7fRbpGEDmiKoI3ydWtrtOP28B2/oz5Nwcc9UDxaKaPb0gY6cYkkwa
         dEPkep/KPcjDr0ObR4CP+G2cLaAR2S5sGKsvk8zdiUCCKdj/4QDIion3atOSRrYe/Tu6
         SRb9Zz/Ge6nSdknpvhr0ktM3jZ4YpWhWtd2UP/+dn5GgUyx3sMRUE5XfP581eJQBok8F
         dX7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=ae9UNJNoIN735mcruw0xt5wDxPQtImXVTyundn7m4Fk=;
        b=fCZVpsbaugMG+KToex6bvDwt4NBM4gNKLdyM3pg9kD1LNZGnBzgCLMpSUeQtJRVARk
         aAfVwZB+6bpQnfj3IU09lgDIZh4E6piLXAnt+A23p8PkwAxTg7Q6hCgskLXCiq2n5aSU
         BCcq5VnYPVykEvZ8KKEtZuUdBCMpM6kgz73Z3BGrz38rgHuNlyFGUTL24MGlh+Mr0OJ0
         ZXBOfbkWc4ofyCMf9AABmSp1jHx3S9SdfIIERYVTtY/AOTOwaVwnpHD8tDZeI6NizWLY
         PDO+pjrNiM+ESAi7uAvuAt3xe0a9c+iAx5K76pX3YL6mdXVzfk3TO/mofbQoza0iNzer
         zTYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 64.99.140.27 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from relay.hostedemail.com (relay027.a.hostedemail.com. [64.99.140.27])
        by gmr-mx.google.com with ESMTPS id c9si1140712pgw.1.2021.12.20.04.13.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 04:13:36 -0800 (PST)
Received-SPF: neutral (google.com: 64.99.140.27 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=64.99.140.27;
Received: from omf11.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay10.hostedemail.com (Postfix) with ESMTP id 796EB1D8;
	Mon, 20 Dec 2021 12:13:28 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf11.hostedemail.com (Postfix) with ESMTPA id 533192002C;
	Mon, 20 Dec 2021 12:13:21 +0000 (UTC)
Message-ID: <bc4a4ba7c07a4077b9790be883fb4205d401804e.camel@perches.com>
Subject: Re: [PATCH 4.19 3/6] mwifiex: Remove unnecessary braces from
 HostCmd_SET_SEQ_NO_BSS_INFO
From: Joe Perches <joe@perches.com>
To: Anders Roxell <anders.roxell@linaro.org>, stable@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, woojung.huh@microchip.com, 
 UNGLinuxDriver@microchip.com, davem@davemloft.net, netdev@vger.kernel.org, 
 linux-usb@vger.kernel.org, clang-built-linux@googlegroups.com, 
 ulli.kroll@googlemail.com, linux@armlinux.org.uk, 
 linux-arm-kernel@lists.infradead.org, amitkarwar@gmail.com,
 nishants@marvell.com,  gbhat@marvell.com, huxinming820@gmail.com,
 kvalo@codeaurora.org,  linux-wireless@vger.kernel.org, rostedt@goodmis.org,
 mingo@redhat.com,  dmitry.torokhov@gmail.com, ndesaulniers@google.com,
 nathan@kernel.org,  linux-input@vger.kernel.org, Nathan Chancellor
 <natechancellor@gmail.com>,  Andy Lavr <andy.lavr@gmail.com>
Date: Mon, 20 Dec 2021 04:13:20 -0800
In-Reply-To: <20211217144119.2538175-4-anders.roxell@linaro.org>
References: <20211217144119.2538175-1-anders.roxell@linaro.org>
	 <20211217144119.2538175-4-anders.roxell@linaro.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2
MIME-Version: 1.0
X-Rspamd-Queue-Id: 533192002C
X-Spam-Status: No, score=-1.11
X-Stat-Signature: 5gayuqe4kzuw64zsi7w1zyzmxgih75tc
X-Rspamd-Server: rspamout07
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX18u6WrSAOpDdNGkNCm15RZg1zit1HkWz44=
X-HE-Tag: 1640002401-869126
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 64.99.140.27 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Fri, 2021-12-17 at 15:41 +0100, Anders Roxell wrote:
> From: Nathan Chancellor <natechancellor@gmail.com>
> 
> commit 6a953dc4dbd1c7057fb765a24f37a5e953c85fb0 upstream.
> 
> A new warning in clang points out when macro expansion might result in a
> GNU C statement expression. There is an instance of this in the mwifiex
> driver:
> 
> drivers/net/wireless/marvell/mwifiex/cmdevt.c:217:34: warning: '}' and
> ')' tokens terminating statement expression appear in different macro
> expansion contexts [-Wcompound-token-split-by-macro]
>         host_cmd->seq_num = cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~
[]
> diff --git a/drivers/net/wireless/marvell/mwifiex/fw.h b/drivers/net/wireless/marvell/mwifiex/fw.h
[]
> @@ -512,10 +512,10 @@ enum mwifiex_channel_flags {
>  
>  #define RF_ANTENNA_AUTO                 0xFFFF
>  
> -#define HostCmd_SET_SEQ_NO_BSS_INFO(seq, num, type) {   \
> -	(((seq) & 0x00ff) |                             \
> -	 (((num) & 0x000f) << 8)) |                     \
> -	(((type) & 0x000f) << 12);                  }
> +#define HostCmd_SET_SEQ_NO_BSS_INFO(seq, num, type) \
> +	((((seq) & 0x00ff) |                        \
> +	 (((num) & 0x000f) << 8)) |                 \
> +	(((type) & 0x000f) << 12))

Perhaps this would be better as a static inline

static inline u16 HostCmd_SET_SEQ_NO_BSS_INFO(u16 seq, u8 num, u8 type)
{
	return (type & 0x000f) << 12 | (num & 0x000f) << 8 | (seq & 0x00ff);
}


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bc4a4ba7c07a4077b9790be883fb4205d401804e.camel%40perches.com.
