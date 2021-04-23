Return-Path: <clang-built-linux+bncBC7457HKSMPRB7W2RSCAMGQEYLDMZMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-f62.google.com (mail-vs1-f62.google.com [209.85.217.62])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C4A369B45
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 22:26:39 +0200 (CEST)
Received: by mail-vs1-f62.google.com with SMTP id u26-20020a67d99a0000b029022205ccd7f7sf5375250vsj.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 13:26:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619209598; cv=pass;
        d=google.com; s=arc-20160816;
        b=ktbDd9Q6USWbGqhYl7cKLoa2BZ6Ax1LFSpPyoQ3WiuEqWnb+z33TZFo6UdodKB6qGC
         mwL3YDKRD3W1S7DeeNqjjriVcCnJQKlOimbL9SIbSsJgxsaC1d5GYAyhAOA/wL0CCj36
         oKMr4pgFWaD+x111hovohdhUPfw1i9/ipk9RUOvojmb8tglRtWRd4HxbORi21WJgcgHf
         k64bECpe9rjbeMAcXqPYqZCgacZPhGrDp6358EzqozIKjeAn0ABbfdztp7y64JP7e1er
         34dSlZ72Rhpyd61qBSKCW9WIfXDl0OkeGWAkKe1v29iMvsht3cdVATYTHhh/+haWcfsC
         8yGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:content-language
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=YuM1dgc+t+9BMZRVktRo8p/Qc4amsIkw/HQAwzZAgVk=;
        b=r5+3aAHovHbTe0duvaJaasNjKEWGpiLb0FHvnvsPO47YMNtmp7GXyxQzk65M94ydc6
         ZYK0scnddxKkKFxzm8IT3oRNnj0VmfmFGgM4QiBWvvL6smo1vygtxttC1OyqDTMY1Qqx
         WFJXWqpZx69eaNRSL0G6BjSoOrxjBifxfmn5nJbGptvW9aX9wPMGgg/7Y/BZnWgIiTy+
         QNZZ63UAXo15y/NnF1g9WlB6xyBLYWkic6xtKV4oEm//FN2ocNDNMZKJhL7Q91YcGdly
         wiKFI9MxUwxfiHjn/AwXzCWERGQV/5CMXL9QbKdoQ95Za+U5AuB3xfKS4kD+CE3FrGsh
         wtNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=VBauo4yq;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :content-language:thread-index:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YuM1dgc+t+9BMZRVktRo8p/Qc4amsIkw/HQAwzZAgVk=;
        b=scXVNL4u12eqBfR7IESV0YVMSXwxedIORAJyWlWyIs4rj02tt9PhoKle908XNEKBtk
         SeysKFmN4I5+sh9MlKyqGsJG5lJSzJ0wImsx2XPmEKw3u3GY1oMbRf6loayL3YjkIzPS
         FwviCZq2CPR9emKGsSvmAQ8hxngEOwucCtBKADf7Hb8/745PI0QyhooaDgRpULIAcyac
         M5qXLWMJIM61FJrlJC1lGGDA/OcMGP9LA3HCV+10sX1fN16P6dezkPblvh/urPTLkW4G
         tJMDE4yJixO2a1jB6FCJe+csftrd2nXLvG//GaZ412WoJ+TRl95N8Cctr95msuDfwZZb
         DTqw==
X-Gm-Message-State: AOAM531KVtXc/Rb0AIx+a0HbeFFn/yTrcJKF04a6Czg5A6ukn19ZjFLF
	0bUPHhd3Sh23vw6tjDw7Fh8=
X-Google-Smtp-Source: ABdhPJyRUmrHWBxc71yIfcP2bP/42LXEPn+V0wWFImV3TXzmmGHdYeojqykm0HW0GTOapKao0In7lA==
X-Received: by 2002:a05:6102:348:: with SMTP id e8mr5997820vsa.10.1619209598719;
        Fri, 23 Apr 2021 13:26:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4183:: with SMTP id o125ls789033vka.10.gmail; Fri, 23
 Apr 2021 13:26:38 -0700 (PDT)
X-Received: by 2002:ac5:cbed:: with SMTP id i13mr5604910vkn.13.1619209598235;
        Fri, 23 Apr 2021 13:26:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619209598; cv=none;
        d=google.com; s=arc-20160816;
        b=roIn6s2/WiFZl2Por0B4CWRX1Uf7yaCdSzZS8BJn8uX7xMNC6iU9ZiIep4OPVUexP9
         hioOq9yMvzlzMUaRhju7n6dVi27rGaTKAghBb/mAz5bcM+OYz9RKEFYbJ9uWlaNFc/LP
         iUZdTTkXCzOHhQ1swndmiL2aypsG5SGrsdQv0XSyRRNyjoj5rWcUNyvYDMnMRW/HKm21
         E4ZZDocrh7VLerdvyCcHdMUCp0cGqj4nPBx+JzqLTBliojsPZg7dGqtomBGe9yHC13Ug
         4NGXymM7hgyWy2zy7doaGHMBXmyx3zgpQDLsddYWNA0NkwIZ5KgfizaPzUIagoNxXutd
         V4dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=DSbiIptFyG6M9pjdmGFsplYKvwsvZF7o76XdO+3XPjE=;
        b=gu7THaSY3SHFp8p4O/A24up4lv0bwDCqTkzg+mgSc7Ep45Q+f0bkuaeSmVqKqHYsQx
         sJaSeCVmeNxIY70JXSCtcouW+Ub08dPN+OA3NZ4Fw2HSmWJXnIei88VCxlTrRrrtlTHb
         g4RqeMmJLSQUo59SH0t8iVY/FF43k3Z3n+EvvNa+KrLSsy0dIkCq65wgZSJ8AxeXLyDj
         EcUMnf/UIJBNz5DrFLGZjwf61kWl4yL+W/y5Cd4bA1zUav4sVRkChMLuvlkra/XLzutr
         E1qVBxXxdt/cbESF+VgRv58oTTWP+y6BHyy1c6VPk6iqKHN4S6JPQewvvA71cal5iL/w
         Pt8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=VBauo4yq;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id t13si931782vkm.3.2021.04.23.13.26.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 13:26:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-west-2.postgun.com with SMTP id
 60832d7d2cc44d3aea7889cf (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 23 Apr 2021 20:26:37
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 63786C433F1; Fri, 23 Apr 2021 20:26:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	PDS_BAD_THREAD_QP_64,SPF_FAIL,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from BCAIN (104-54-226-75.lightspeed.austtx.sbcglobal.net [104.54.226.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id E7A2AC433D3;
	Fri, 23 Apr 2021 20:26:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E7A2AC433D3
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: <bcain@codeaurora.org>,
	"'Arnd Bergmann'" <arnd@kernel.org>,
	"'Randy Dunlap'" <rdunlap@infradead.org>
Cc: "'Nick Desaulniers'" <ndesaulniers@google.com>,
	"'open list:QUALCOMM HEXAGON...'" <linux-hexagon@vger.kernel.org>,
	"'clang-built-linux'" <clang-built-linux@googlegroups.com>,
	"'linux-arch'" <linux-arch@vger.kernel.org>,
	"'Guenter Roeck'" <linux@roeck-us.net>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com> <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <fa0bed95-5ddf-ecad-0613-2f13837578c3@infradead.org> <CAK8P3a0ttLxzP0J-mocxB2TkfEYJYj37TdW=uM65fB4giC_qeg@mail.gmail.com> <026d01d73877$386a1920$a93e4b60$@codeaurora.org>
In-Reply-To: <026d01d73877$386a1920$a93e4b60$@codeaurora.org>
Subject: RE: ARCH=hexagon unsupported?
Date: Fri, 23 Apr 2021 15:26:34 -0500
Message-ID: <027401d7387e$f5630120$e0290360$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQHA6GaHPKlqiI34kZpdCyOyqmKBQAItWAQVAeg2vD8CQqkwGgKUjDBFqqfGhmA=
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=VBauo4yq;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

> -----Original Message-----
> From: bcain=codeaurora.org@codeaurora.org
... 
> There is a hexagon cross toolchain used for testing QEMU (userspace) guest
> code test cases.  This same toolchain can be used to build the kernel.  I will
> share a reference to that toolchain, standby.

It's published as a container in the Gitlab Container Registry.  You can use docker/podman to pull "registry.gitlab.com/qemu-project/qemu/qemu/debian-hexagon-cross" in order to use it.

-Brian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/027401d7387e%24f5630120%24e0290360%24%40codeaurora.org.
