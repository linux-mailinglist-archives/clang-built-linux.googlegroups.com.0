Return-Path: <clang-built-linux+bncBCQYFH77QIORBVXX5XXQKGQETJL5QJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-f187.google.com (mail-oi1-f187.google.com [209.85.167.187])
	by mail.lfdr.de (Postfix) with ESMTPS id 524D612638C
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 14:32:08 +0100 (CET)
Received: by mail-oi1-f187.google.com with SMTP id u16sf2756914oic.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 05:32:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576762327; cv=pass;
        d=google.com; s=arc-20160816;
        b=byEKlzu6urSylLZrWnOvF878qAYqSgmk2ZazeWDxL3USoJ631UXo0WvJV4yM82+XsZ
         ayV11pO6ZMW5B4Wj7JQgP+3DN3zJz0131/4IYVU++x3NXo/qvMJuwKmHGb+RokkStZ7U
         mNBD0JvrEw6whTZNqeDNgc/HEN293audtE6t6y+9x0uZytOaefQd/CLSvWvBTA27NHQd
         q6DOL5Fs0ObR0kexc4Z0BA9g81planAGTMg7cK10o0L91HIUHvI+BpBnSejKEki1p9rF
         6W/9Y73UisYiv6MTo5Qhj6A5fSyWbqURssurJMi1DvXZ8UX+TaBAHE8LFSjhWuNVaeYS
         ExIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=Bw7vkCa/gGx6MvQvtVO+r5I1JcDvMIQi8gLH1Rrt870=;
        b=uaFdOZ3pjFjE5COQS7Cl9Nfr0T8mrcA6VFX1UF+UbqmLQGQx/ibFwyY7pK3tonYm4M
         wQo6+1UuhszHcyPMjyPR+2gd+PF8/5czwR+hhE6oihU9Y6TYoLwdTfU/NS71v4HEXwlN
         a1DyPXOanQmE4aUpmY6iheD+lzhoIFZNpUSU7+I95PAToEa5SuhKJnzB4kmOtQkk+qce
         +J2BfgePl6rqC/VmsZJ6f5w60p+DLXVE39qiHowePYkoeHgas07u2JbHUIdsYg8JZiLq
         Fg73GTSGJqBht9D7woY0QigrGG7wubJ0jgUMlHHG8nT9wUm/G5F7NzPR4f4W3yiwL4a9
         j3WQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b="Tp/uSIfh";
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bw7vkCa/gGx6MvQvtVO+r5I1JcDvMIQi8gLH1Rrt870=;
        b=gxtm7zo4TJVBzwUSVMc7USZ7kGIbZSkBDKtBW1Wz6aqb9gxq+uDYmfphbUuobFnb9Q
         KZRFygZ1eawwCJcXzRar7pae0EEm87GWwRX98vO81eEGL20IRjpR4ZjGfDi4yNs6mV12
         i7dRiHZwqFOngs6YzEyW6n1aAo78iRk4UGGiePD+Voq48rJxs1W1FEeItrfUQMzK1dsM
         0Wh3+a6CRcvOLoELBZ5oD2JwrpbZyi2GkhybWOz8KnZp4Qo9s2VTU8fA2BsxjlWC4Tce
         zi3DN107fJDm2ZefcySON/BWBelEkM5YmTbCb5AN742t2gNMcqqmdygz/qt+9nkQ8RBw
         oujg==
X-Gm-Message-State: APjAAAXowhhAmxVosTuQljJy8ox9Z3HcUXabdMjr527EECKdmG7w5UFv
	VC8ga/ocH46zTaRdOEWT7Ss=
X-Google-Smtp-Source: APXvYqwprCcVJzfVxd1TsK2x64b0bPbeBFHIK+wMQJV2eSGT4QJdgvJ4wzl3wX9KTRZws9HEo5L55A==
X-Received: by 2002:aca:1011:: with SMTP id 17mr2137523oiq.72.1576762326861;
        Thu, 19 Dec 2019 05:32:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6081:: with SMTP id m1ls1723355otj.0.gmail; Thu, 19 Dec
 2019 05:32:06 -0800 (PST)
X-Received: by 2002:a05:6830:13d3:: with SMTP id e19mr8929018otq.135.1576762326487;
        Thu, 19 Dec 2019 05:32:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576762326; cv=none;
        d=google.com; s=arc-20160816;
        b=bfkfRsEIW7eirmlL7b34Vl8GnODrVh8xOte+6bOjhKhwKwmYrRNSa5RTNQBzrvkCM1
         o8swYkXHQuM4TF1l/R8++nXrmStu8hJwnJdMlNOV0BR84MfxEOlsDckOCWDz8h17z0qN
         omN4v72KCyG15r7SLLpWDAjPJc7oFl5by659VNj4IzRuOa9Y5oXfF2XiPkZL44lvWa5K
         t+E+Vb8EAU+Ew6od0fM6kMEyjJWqXJ2G9AKFYmlI2Ot1i3zdLQiewMYBLvq4+gXg3L3G
         2U6SbUy18Ad60y50n5OFmBMm0vKWn4UM6hzCveUi+2zAJCoWrT2PvvF1uCMUTcvnG4VB
         5PJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=41W5xZgEpVmLUelbR692YUsa8fLldV9N+l6CsEx5uLU=;
        b=Okb4XX+CmHrvUWp83jYtOphcEXDPyY7sCGBVGFeu9CaaEid9NblTr2W/w3m+mlO2Y+
         FgAVb5O3CzWf8SN7pwe84qj13skzWgCUHD7xGA/Lr+n2bkYbq6rvSSqHL7JVlWZqFjhd
         L7pn4hniALnEBtWLVxUvjIdz5M/TlFVHh22DsmgjYItmAW9sRAv9gmCeDb+73Q4kAwsK
         noy1bisiMGEO3l1hrBv5pBc2QkFUs1KV9XqyyeUohAGWErWS5ybeThivo4NP14gy8Jdc
         tsTjcJ3a9VJfsVbfra0nTVBnuFuxaY1z61iEPVePHpFDhDCeeY9+xLsFkqI7HlgHEuHO
         +9KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b="Tp/uSIfh";
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from mail25.static.mailgun.info (mail25.static.mailgun.info. [104.130.122.25])
        by gmr-mx.google.com with UTF8SMTPS id 13si235021oin.1.2019.12.19.05.32.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2019 05:32:06 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) client-ip=104.130.122.25;
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: from smtp.codeaurora.org (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfb7bd3.7fa22417cae8-smtp-out-n02;
 Thu, 19 Dec 2019 13:32:03 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 98362C4479D; Thu, 19 Dec 2019 13:32:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 84FA8C433A2;
	Thu, 19 Dec 2019 13:32:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 84FA8C433A2
From: Kalle Valo <kvalo@codeaurora.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,  Network Development <netdev@vger.kernel.org>,  linux-wireless@vger.kernel.org,  LKML <linux-kernel@vger.kernel.org>,  clang-built-linux <clang-built-linux@googlegroups.com>,  ath11k@lists.infradead.org
Subject: Re: [PATCH] ath11k: Remove unnecessary enum scan_priority
References: <20191211192252.35024-1-natechancellor@gmail.com>
	<CAKwvOdmQp+Rjgh49kbTp1ocLCjv4SUACEO4+tX5vz4stX-pPpg@mail.gmail.com>
Date: Thu, 19 Dec 2019 15:31:59 +0200
In-Reply-To: <CAKwvOdmQp+Rjgh49kbTp1ocLCjv4SUACEO4+tX5vz4stX-pPpg@mail.gmail.com>
	(Nick Desaulniers's message of "Thu, 12 Dec 2019 11:34:42 -0800")
Message-ID: <87a77o786o.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b="Tp/uSIfh";       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

Nick Desaulniers <ndesaulniers@google.com> writes:

> On Wed, Dec 11, 2019 at 11:23 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
>>
>> Clang warns:
>>
>> drivers/net/wireless/ath/ath11k/wmi.c:1827:23: warning: implicit
>> conversion from enumeration type 'enum wmi_scan_priority' to different
>> enumeration type 'enum scan_priority' [-Wenum-conversion]
>>         arg->scan_priority = WMI_SCAN_PRIORITY_LOW;
>>                            ~ ^~~~~~~~~~~~~~~~~~~~~
>> 1 warning generated.
>>
>> wmi_scan_priority and scan_priority have the same values but the wmi one
>> has WMI prefixed to the names. Since that enum is already being used,
>> get rid of scan_priority and switch its one use to wmi_scan_priority to
>> fix this warning.
>>
>> Fixes: d5c65159f289 ("ath11k: driver for Qualcomm IEEE 802.11ax devices")
>> Link: https://github.com/ClangBuiltLinux/linux/issues/808
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>
> Further, it looks like the member `scan_priority` in `struct
> wmi_start_scan_arg` and `struct wmi_start_scan_cmd` should probably
> use `enum wmi_scan_priority`, rather than `u32`.

struct wmi_start_scan_cmd is sent to firmware and that's why it has u32
to make sure that the size is exactly 32 bits.

> Also, I don't know if the more concisely named enum is preferable?

I didn't get this comment.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87a77o786o.fsf%40kamboji.qca.qualcomm.com.
