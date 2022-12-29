Return-Path: <clang-built-linux+bncBCXPF5NFTYORBLXAWWOQMGQEDHZY3ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFB3658BE5
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Dec 2022 11:47:12 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id a10-20020a056e02180a00b0030bc09c6b94sf11535169ilv.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Dec 2022 02:47:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1672310831; cv=pass;
        d=google.com; s=arc-20160816;
        b=gIH7IZugVGFB+aSXT9lmxc7cc5Yzh+/L/r+AypY2hPrOIu1ZuawvW6c/ET5b6wAEfb
         V8ZzmL/aCmjw0siA0XSDBAC/SQnBjS83tWa05pIDPWcmoMDdm0ErdhBT7QR0xrKgiVw/
         K2ds5cH2hSsxe7r/aVPzlTtkWunfbyxKbwd2bNTpXgSRY0h5Y4Lzz6kbQ3N7XPzy0iQv
         qwuJz9MpcKPxCJeqoC4vU5ZsEPfa8lUC63NDH3/KYVzKKRgJk2mOOu5Qito7Cll6IwpQ
         ahLBA9inaw8+oJXfs2PEW8vkP3zyiyhkfXX0xL9V/Tnn8tWR3+8OcQWsEeoQYD4qC5g6
         QYHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=N2hB9NKWtu6NrMneydlCA/RqzhpdBGJ+TC2BP3nGoZQ=;
        b=bhnncOnNYMyfk1UWJP6uFBGGs/UhwIjmHeCVqsH8AkWYxtiRhUumpNT2xsIkc+CB/Y
         2G8r9181KQBfQ10OU+WmjKij1AD9KywMOunWeUPVXRAe4p2TxK56S6MJXDE/vPEpKTCQ
         rpI0V8R+acHZ7XPkNX7y0hczpNlC4rlMJ85sckeJVokEBhjpUcLXOSvbPaCX4K6/W4TN
         LXcdMO6NIptRWIhhrvKYuATkSH74MjhyZLjyj3T7vMWg8fUEBPYfCGS9AUt2XPPIQ4U4
         EUqdRQULHLJgcOqMA5ASSJNgCQYXu1dK0LXI15iNI8+chEuTopbRLKU8MjXTbGWmxFfj
         JgWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=fgb5rXjP;
       spf=pass (google.com: domain of mrsmax45985joy@gmail.com designates 2607:f8b0:4864:20::1136 as permitted sender) smtp.mailfrom=mrsmax45985joy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=N2hB9NKWtu6NrMneydlCA/RqzhpdBGJ+TC2BP3nGoZQ=;
        b=hraLcGPM99v3KrImzAFF/+vtEU8vIez+6/hWY4Uqpp9XiVb24v8y4MYzde/73RUSFE
         gRttCkXMUujVFMrjojkPyba5BjBeiqSDPdt0eeexqEELXccdb7swB2mnMD4hukzWBhpD
         GjOifkAu6tgyXo1FV2D4I4FdrX3drOyjq1bn+t/4y8vXatDTr8NRgPfP70Eah2TZK5ua
         BQsTRDv2U8l2rhgy0UigiqTjdKzFHX3DaOFcb3M3eKg0/O4Qjo4Rt+BMyRhIH4SegEnj
         rMj31x+Qxyj6BtQoL32ur0OhRrZ4C/5A/RxJ6/qGVfWZhDpLWviT5AtcyLbvijVZonzy
         8V9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=N2hB9NKWtu6NrMneydlCA/RqzhpdBGJ+TC2BP3nGoZQ=;
        b=FCm87zvf8ryXsM898Oc44XNc6hNnCWkTT7Ab1/iHs8HzbtSdNa2in97yOpA8rKGzrx
         5QfJYxcFcPphy4M6bpnr7us5zL6UElAFVjBS2UZW0wGfrfgRXFH7sZryfReci29s1k6C
         VN5mBEnAeuxcLyepl/diZyZJLnLRzUwAc+HJSt6TVZfScjvhs9ar41JvrZ5T9xB+73fj
         GmDY2Z2FZ9t1PhiaBAVDfCaFMaJc/oVQk+92c2sabeBTDzrewBe2NOuJshud/ULuGon9
         npaKP9OvED04AvNfCcIPR4xVCURWUVSl+V98cIy3nYYZD6eyVEdpy+o2csHb/p3yj/5G
         RhPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N2hB9NKWtu6NrMneydlCA/RqzhpdBGJ+TC2BP3nGoZQ=;
        b=UcD3d/NWQKs6kRl435Z3irGxG3NXdPSs+tswF05Dm7sL5BdE4w/3M/OpIBGw8BZwD1
         nqXma6OUY8+LVdj/kgS/RyQclybdU0FtOPnSDRfgtrvDJpiqmqXusdbJkppNRkLHUvtm
         oY1swERalXYDizHHkedOSo39RN2P3BEsTaBBA88ZDhQnTmhXcLqk/xur5jKx2xHxNWL/
         hUI6405EhPcdGUhZwz6OPIta5jZg0stBnfTyjCa15WrDyrQFnLqnVilHQBiHmVSfB4T0
         ks+nZobHzS41sgmNRDq6IXCYthX26HnVo1teqZDiEYpzLq0l9qjwOKujUCVXNCpw6fSH
         CjxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AFqh2krq02MEBbhm9226EW+BNWy4FafEQMuGULO2atmnVaG1uwswIhTu
	7nRH1pXslvHPCmx8SlkjNsw=
X-Google-Smtp-Source: AMrXdXu18aZFs6hS1MPKGyXn+uB8mBpri9Wp9A8lCi2RkdKWzhRjZtHSILa1v0IJcdR6egzv6qsdCw==
X-Received: by 2002:a02:a78c:0:b0:38a:b269:9549 with SMTP id e12-20020a02a78c000000b0038ab2699549mr1841573jaj.222.1672310830933;
        Thu, 29 Dec 2022 02:47:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f42:b0:304:a82a:30ef with SMTP id
 y2-20020a056e020f4200b00304a82a30efls4067943ilj.4.-pod-prod-gmail; Thu, 29
 Dec 2022 02:47:10 -0800 (PST)
X-Received: by 2002:a92:dd85:0:b0:303:2603:c00a with SMTP id g5-20020a92dd85000000b003032603c00amr16906943iln.17.1672310830465;
        Thu, 29 Dec 2022 02:47:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1672310830; cv=none;
        d=google.com; s=arc-20160816;
        b=vpxrQb23SM97t/WeiZY+krnc6fwd6WKz2XWnDKtn2FURbZ5tcheeYd/H53LQbPfQQp
         ktj9Ohn8lLVSuaY5MPNc4dVZtgm96TV/+2zEGv+GPrv1bWND+wE5A3FvMIxu+EnInxeN
         pyNb0nUkmNE6PriHyGPqWy1yN5E011lNE3Hfoh1PaHoex+NJWeT4gGKPDHG93fCkMTmu
         KE3fbOGlE/Fi6GNOS8IFR8NtgzlSSLptuSrUoblew8nB1WlHZrS21N312ptDtAf3cqg/
         KhChrVjkf8jV32MMBcbQ/nc6uAc83dnsT2qCVKjUIdYbvHCAn915DPztxLxw2E9MkRSo
         DMvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Hj+8kOxXJgbcPsnJjz5ZTx5z+0lL+1xQwEEZYS0tIWU=;
        b=ekDNtpA6twSGQwMsraLCBaSx6DpIukn9xrilb2a2jQFcIRU0gUWXo0gsooJcWGEPWj
         JvCwjAkzPj07sDf0o4kuPGvmTptg+U7npZ7GMy10xhjE2qLzefz5X+pGgwjcaBzpcNpf
         pjS7KtqliWiNtYpEJDf9oIAQ07Zvc1ioI04AzX0GFsK6yHBM3a/UqA8kbnt+oIKMVIpP
         V+GcrsAL+IsQHJOmYmfuEuQYrh2qw2DSjQYfNYAIUbl4G1jcWvjG8jFWxwFRT8vbjj3j
         BPdJ9aqEa+YhCZd+kpp9OMmfXjf4HqbgFqwRvb8SUNB/kwt8s7khWXLr8pG/lhoQVoEz
         6S2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=fgb5rXjP;
       spf=pass (google.com: domain of mrsmax45985joy@gmail.com designates 2607:f8b0:4864:20::1136 as permitted sender) smtp.mailfrom=mrsmax45985joy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com. [2607:f8b0:4864:20::1136])
        by gmr-mx.google.com with ESMTPS id t12-20020a922c0c000000b002fc5c99ad7fsi1656831ile.0.2022.12.29.02.47.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 02:47:10 -0800 (PST)
Received-SPF: pass (google.com: domain of mrsmax45985joy@gmail.com designates 2607:f8b0:4864:20::1136 as permitted sender) client-ip=2607:f8b0:4864:20::1136;
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-47fc4e98550so113500177b3.13
        for <clang-built-linux@googlegroups.com>; Thu, 29 Dec 2022 02:47:10 -0800 (PST)
X-Received: by 2002:a0d:d716:0:b0:45a:e84d:65d1 with SMTP id
 z22-20020a0dd716000000b0045ae84d65d1mr2653546ywd.250.1672310829972; Thu, 29
 Dec 2022 02:47:09 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7000:a2ca:b0:3de:2fc5:619d with HTTP; Thu, 29 Dec 2022
 02:47:09 -0800 (PST)
From: Joy max <mrsmax45985joy@gmail.com>
Date: Thu, 29 Dec 2022 11:47:09 +0100
Message-ID: <CA+=CNfggixFqrBddtDvLbtB5Du4FSPtUqR6zT3fTQqgTaqF9JQ@mail.gmail.com>
Subject: Attn Dear , From World Wide Organization:
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mrsmax45985joy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=fgb5rXjP;       spf=pass
 (google.com: domain of mrsmax45985joy@gmail.com designates
 2607:f8b0:4864:20::1136 as permitted sender) smtp.mailfrom=mrsmax45985joy@gmail.com;
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

Attn Dear , From World Wide Organization:

The World Bank Organization (WBO) has received the full consent of the
responsible authority to retrieve and to transfer on your behalf your
much-expected payment of Eur 10,000,000.00 only without any further
delay. Our guarantee is that you are now bound to receive the funds,
despite all the incessant delays and financial loss the pursuit of the
transaction has caused you.

Please provide the information required below to enable our payment
bankers complete the wire transfer process by MT103; As the
beneficiary you are required to provide us with the following
information as below:

1 Name of your beneficiary bank
2 Address of the bank
3 Swift code
4 Account name
5 Account number

More so, we shall need for our confirmation;

1. Your full names
2. Your address
3. Your direct telephone numbers
4. Amount due for payment

Note well that your funds transfer and payment cannot be carried out
successfully except the full and complete information as required
above are provided. Allow between 24/48 hours for your payment details
to be furbished to you, so that your claim and payment will be
completed, as your funds transfer payment instruction and slip will be
electronically dispatched to you by our payment bankers.

We look forward to your cooperation so as to enable us serve you
better. Try to gat back to me today,

Regards,

Mrs. Joy Max.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2B%3DCNfggixFqrBddtDvLbtB5Du4FSPtUqR6zT3fTQqgTaqF9JQ%40mail.gmail.com.
