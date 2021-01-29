Return-Path: <clang-built-linux+bncBDGKJJF25QHRBT5QZWAAMGQEB4SAXUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E294308268
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 01:35:28 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id v20sf664936uau.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 16:35:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611880527; cv=pass;
        d=google.com; s=arc-20160816;
        b=PzFyYnkoqkZe1OvnH/TSgJkp3pL95IzOGhwB+qIWXuHRFfsxjviMNYClBgYNXBBI6L
         AX4ZbBUlCyfMy7OdAp/yASSjALEmmqqvCC/uZNXzFp5c9C7AeIOMyWyqdfAjWiD50TRT
         UH6/THtHy+UuhTPXDg2OEzYML52vrm/6/6dF+07gfMP2VQ48dsyW4hdp1vjBO5fwMcf/
         p4IIieXSsE76+w7CXkXqfh26a5zrVbz+wbArUjW0wFe3Ma1dwOsjaE2Su+e+LVfOO/Kb
         8/Xd3HiCYK2v8nc42wZy1x8YNnCtwd9LPhKxcTVk956iwNrkWECJFaShJUrGTI8oTZrp
         teaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-filter:dkim-signature;
        bh=ixgvoTF8cF6vEIcXhKOXwyQlcXJ31XGQnhASdhKXSoo=;
        b=QMz4N98Cu2nwNFRZcJMC0auVbb38yosWvH104K4UybNqlLWDiZrUrBPuCDp58qbbb7
         xusRk076pe9H+ALzCIVPuXc+N8RF0FoUS9GK+gH7DzdqZEUUVL3O+fj11YPf25PrbhMA
         jPbEGEBJclVDvqHFe/QUjdvcuEeE1PBk5S+UbgzcVvYRybK/fm3b2DfL8g6Lwf4EOshw
         VlOEVaNxJMGOywtKom6dTvTyul+d33Up+PwvNMjaeIiEMByc+SKM1uZ/K4VjknHpF4I/
         AsmWgGUzVyQpgcs42G/YlR7ZSRHbQa4bP5n0pBkvA3UiQQF5q5MTQUqZr1L7gCWwWQbs
         /0OQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=dkimrelay header.b=mrNOsPkj;
       spf=pass (google.com: domain of scott.branden@broadcom.com designates 192.19.221.30 as permitted sender) smtp.mailfrom=scott.branden@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=dkim-filter:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ixgvoTF8cF6vEIcXhKOXwyQlcXJ31XGQnhASdhKXSoo=;
        b=ivFXAx85pkONLBI1yj8D7R4DMdm9mK3ffI/wH8cIkSYw0M22h90pKgU5+hsbtpfu3h
         m9Irko18owQDlDC/jCo3G1s+hUR8iejd2Tv4XrfIR9C8k9BiBz+X69owVqsoT+f2px0q
         UrxsnxVusIo+xYWc5k3R8eMYjWQtfaeXNpntGOvZaT53c6+Tgn68rRitb5y2zyiXDbA/
         itFdSOy5QEVv8e/SXu+rCQ5vi9PFNjljQmFYt8Uc43fBwYwyshmhEeOGlbE1vqFP6Xs0
         f6neYtVh1p/cbSiIGBz2cRTVOO27/SekZ+jc/nxuHO/bVnQd/sgjLRXvYhj+4ppVOqPr
         AM6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:dkim-filter:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ixgvoTF8cF6vEIcXhKOXwyQlcXJ31XGQnhASdhKXSoo=;
        b=kg44gpYof1k++9Bpr6YwJ+D+tJ/99SvmL2wGkeyl+6eKV6UAgkpRrVGidkogWJTWD9
         VYUNB0tLiILpiiWYGghsek2subIV5Ra45V4om3Q3xHVzzhK9z2SSnNvX5D+yy7RK1Kvc
         SL+80heQBEr6I/8pBa6ecPI1+OrM7JP8PLYwVeWr/E8IX5a3wC3VtQykf2zhF6gAh18o
         SF4V5r3gYe8WC/SoPkF9q7irnldo9N02pm6dN9gpW5z9HE+1YBgZF2zyGWoCUcggKPoY
         VqWCXvVEEvl/Y8UfEDzju4+JvX+qAcUDjUFew7byDcvceTd1o3XGI2ChNWmcOBzE+TM2
         H5dw==
X-Gm-Message-State: AOAM531zAKTBbuxbqM3XQMx2d4qrSg5fkFqNS+D/CqewHcfmXIa6SXb1
	eGw8ICaqIOXYGTynyLEfAts=
X-Google-Smtp-Source: ABdhPJxWgc6grvWabdiX/I6pJIfgNs4p6XCaoZDu/l6Mjbgr9HTu+tuc4DKLQ8W3Xez7PzEyqZ59EQ==
X-Received: by 2002:ab0:59af:: with SMTP id g44mr1418590uad.37.1611880527244;
        Thu, 28 Jan 2021 16:35:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:c0c:: with SMTP id a12ls506814uak.0.gmail; Thu, 28 Jan
 2021 16:35:26 -0800 (PST)
X-Received: by 2002:ab0:7296:: with SMTP id w22mr1411461uao.13.1611880526771;
        Thu, 28 Jan 2021 16:35:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611880526; cv=none;
        d=google.com; s=arc-20160816;
        b=cKRZE7jITXmp8vDp4KpkOe/TrQ80deAp3/gBYbxM5qGVNnbLGoFtqoKzpJyP1gly1z
         p/TF5CnYWspleL0MbDlkrh/IYDrZfQtcuFy7BUjHFfyc2CWMtyYD0loSD2MZQMagGreg
         htUL4XscULlQHUxvN6qbeIYmAHKq0FyZ1mmfk0ofbpbst9tUFtMEdrzExOWnB5Za+pzD
         TbHt7qqoW3djmIfmJ8ZWtduNb3OR4ycXDpjM5JyTe8dGZy2pcHyIez1hzEw7rDR8J28r
         l9nRx/QtZsPjNMLHmgbGYiOVIHCDZ48LcYv7skj0Jc/RRw4eQxFRLITDQ3kO6FXM1GcM
         Pt6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-filter;
        bh=CuixR9SYk9eHtNqehjm+t6N+M7GJLuV2ljPtWYThJtQ=;
        b=rTJ1sxgFG+xcMsiaoIEssjj27UsnybMwJKrFlexkAcei2divxHYnKBIVwb8LqBPSxm
         dFQg6dO2Q/d3UjVm4n32d7WtWypeXi1w9BD28FpDh4xX4STVNbVRSJPgJGJQ0vDoYD56
         hnCD8BqDDDYUpmQItbNA1WZKkN3rJ2MXo7GtfrBShQY2EPm381eCLFdTaHbugCkMF9M8
         pEnRwhy5tkd3CdyGFZxFVlK+kXCJeEK2lY6rUhv19F26EQq1TyP79yVuqJUnaLhp8eRd
         GWrLmHeioHvrT4J05MKMq0rlDiFhff0DsNxpiTaBWSbZLnLt2RtH7TS3G5HUO555mk9R
         ++Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=dkimrelay header.b=mrNOsPkj;
       spf=pass (google.com: domain of scott.branden@broadcom.com designates 192.19.221.30 as permitted sender) smtp.mailfrom=scott.branden@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: from relay.smtp-ext.broadcom.com (relay.smtp-ext.broadcom.com. [192.19.221.30])
        by gmr-mx.google.com with ESMTPS id p73si358367vkp.3.2021.01.28.16.35.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 16:35:26 -0800 (PST)
Received-SPF: pass (google.com: domain of scott.branden@broadcom.com designates 192.19.221.30 as permitted sender) client-ip=192.19.221.30;
Received: from [10.136.13.65] (lbrmn-lnxub113.ric.broadcom.net [10.136.13.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTPS id B05527FF9;
	Thu, 28 Jan 2021 16:35:22 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com B05527FF9
Subject: Re: [char-misc:char-misc-testing 33/62]
 drivers/misc/bcm-vk/bcm_vk_msg.c:56:35: warning: operator has lower
 precedence than '|'; '|' will be evaluated first
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Desmond Yan <desmond.yan@broadcom.com>
References: <202101281343.HHBfhVkw-lkp@intel.com> <YBJwjTi77iQWwD3s@kroah.com>
From: "'Scott Branden' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <baec5e4c-e4c4-d53b-5ce9-e616a5abde76@broadcom.com>
Date: Thu, 28 Jan 2021 16:35:20 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <YBJwjTi77iQWwD3s@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-Original-Sender: scott.branden@broadcom.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@broadcom.com header.s=dkimrelay header.b=mrNOsPkj;       spf=pass
 (google.com: domain of scott.branden@broadcom.com designates 192.19.221.30 as
 permitted sender) smtp.mailfrom=scott.branden@broadcom.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
X-Original-From: Scott Branden <scott.branden@broadcom.com>
Reply-To: Scott Branden <scott.branden@broadcom.com>
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



On 2021-01-28 12:06 a.m., Greg Kroah-Hartman wrote:
> On Thu, Jan 28, 2021 at 01:42:55PM +0800, kernel test robot wrote:
>> vim +56 drivers/misc/bcm-vk/bcm_vk_msg.c
>>
>>     52	
>>     53	static void set_q_num(struct vk_msg_blk *msg, u32 q_num)
>>     54	{
>>     55		msg->trans_id = (msg->trans_id & ~BCM_VK_MSG_Q_MASK) |
>>   > 56			(q_num >= VK_MSGQ_PER_CHAN_MAX) ? VK_MSGQ_NUM_DEFAULT : q_num;
> That is a pretty horrible chunk of code, Scott, can you make this a
> "real" if statement please so that we can read it?  :)
Changed to readable if statement and v10 patch series sent out.
Also fixed compile option if CONFIG_TTY is not set in series.
>
> thanks,
>
> greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/baec5e4c-e4c4-d53b-5ce9-e616a5abde76%40broadcom.com.
