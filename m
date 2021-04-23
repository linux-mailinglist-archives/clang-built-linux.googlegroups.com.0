Return-Path: <clang-built-linux+bncBC7457HKSMPRB2ESRWCAMGQEB3WPJKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-f183.google.com (mail-oi1-f183.google.com [209.85.167.183])
	by mail.lfdr.de (Postfix) with ESMTPS id DACEE369C86
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Apr 2021 00:25:45 +0200 (CEST)
Received: by mail-oi1-f183.google.com with SMTP id p124-20020acad8820000b029013d36f4aa65sf18910270oig.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 15:25:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619216744; cv=pass;
        d=google.com; s=arc-20160816;
        b=E/chuZkvLDj8l0M4qDmjizo3NBSAMyA9VyZeLvrN3sGRiUREYyy+9BJrjBus17QxCj
         fuPh3ZHn/VLTeVDBBpQ3YqSIiRxJSIZBifYF9hKxFAMK4vTDeahf2aNDI5YRrREKBL6X
         Pd2ZQZuRA17jZMPCJLAyq1iyR6Ajw7Z83k0TdihmDrB130nbU+pPgXc1rOVBUIKF8iQt
         OLt4eEPnZGMDh0wrAljBgt9wtEQZtIs0UIeRJsn6jZt7LTtrZ2mBLk0wyK9goDDPCTvK
         lBwdP6CYaU667HHxrfGAf/xE5aPszF7N0Fx5H8zu+ip8LGujT0iiBwqWEH7dLp8LKLPl
         joYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:content-language
         :content-transfer-encoding:mime-version:message-id:date:subject
         :in-reply-to:references:cc:to:from:reply-to:dmarc-filter:sender;
        bh=xDvNJsjUwBf4xnICo3ouWAdXpvhQHa+PLz8ajd1CMHU=;
        b=pjEYq8KtU2aPOOZpTUjhbcqeJRa2WG04FAj45/KkDNPfNDbLufUMi+ZwxrYyK5rWTz
         1oHr2Dm9Bk3ES2XvAgWyggrX18r99a0AKNLwZg05YakLzPRj9/BFOwv9xbTtw4TK9mrO
         YN16/9Fb1dcOn5X5lF3cjDQPmrXMenD5Ep+MTZomtSIeUWIkppsyvGvaEk9LEVg71fVi
         +II1hqChTyQAgCV0TVBnt24F4zU/kmqgTGDvYusL+fFo2XLBRwkKNrCkZ0JnXJjH+ueG
         2v72ExGFKhrXAzu/OCCLX0OHKa9V3BTa2IqTnxfXh65QC+v80/MFy0RlR/0D3Z19B6AK
         v8bA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=ONN8XavD;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :content-transfer-encoding:content-language:thread-index
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xDvNJsjUwBf4xnICo3ouWAdXpvhQHa+PLz8ajd1CMHU=;
        b=OUtL7rRUAn0KWVF4pBXNNdAI3xtK1UMDtlGW5s1cMtanvGV/+EVCGb7qLUjy98i7ys
         GrQRY4/ECD83wLJC9YQ2ZWFsFS1r+ry/S9cvfcj26e5ENiUw39pGOX2vVo/J6vUrfSQ/
         /KTgoGhWnmWYduYibxlgc/Pmf9aqbAbQZdPNPdfh6KwiZpPB9ygQCyKJGtq7Lk1oM2li
         609OMkmHKofdxh8rsZdIJgJ9iFb2bX9pK4EQUbhC/enn7ENUmDfj94i60kju1j5nEwvg
         50CAPwQ7iLk3PScCNVzEixvNbGD4JsT636ds7JcLV2JHuBXIj565bIlaXFUWzFTsXxXV
         xXhA==
X-Gm-Message-State: AOAM531TfTiUKjFfq/azzyRgOwkMXD1Ci/ykJ4p+CzFa8gT7Qp4kdePj
	sXsdjusQ1PN9d1z92AzsjHY=
X-Google-Smtp-Source: ABdhPJxJxFEedvWefN7NqY2WxbNvCBn9Mq7gM8sfWggFLbZwmGWVZtYNuG/7uluW9SWlY4aWTShgkg==
X-Received: by 2002:aca:b02:: with SMTP id 2mr4463795oil.44.1619216744731;
        Fri, 23 Apr 2021 15:25:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c5:: with SMTP id 188ls2923132oif.6.gmail; Fri, 23 Apr
 2021 15:25:44 -0700 (PDT)
X-Received: by 2002:a54:4188:: with SMTP id 8mr4392390oiy.96.1619216744371;
        Fri, 23 Apr 2021 15:25:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619216744; cv=none;
        d=google.com; s=arc-20160816;
        b=pExTrxRaFhuJ+05Sf8DsZEfqyw95xoNLrP+kd2Sfdk4Bw8vBBCb4CWJ6tndt25fodd
         MzSD7jTtuZ0RiodocJeFDwmGBbqcOF8+lBAqD7cQpSwSz65wqTNAn5o56Edfc9Sz9fSm
         vE79xTj5kvg4DNjdAO0OJafjJD/ETvq5GDJemJ+zJ8/eLJKLjPf+/gXFVeOvAeNcL9UX
         7WJGRKAFYCgmdYMVpnLPmQqI8wLxPdKSyGVsd1LlUxdi835Cm0BerWY6pmDT7NkRW2C4
         RWdPmZWkO1jhmVUE5LEciEjj47twIMeNEulXbDUms3ERPK3a1wHWtaoDiWpS086jAF8o
         Vzzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=wMOnQpi7ovLRfONEKjZgRwn/sKBHpGwI4nuW9iNQ37g=;
        b=0qNbP2EdqTqF3pdHvh+pm4HLaa2e09Yr0ac/vP9n5ZvfA0A46Y06ZeZmSeVXtcxecQ
         e7ARoRTEuqHjqWEMTEAHccdt5AS0NCafLXlrk9wo8G6OlZ79F1dqMXpEEZBXe8p84kN0
         b8t0PjgCu4GVmbnS8Uf03g9T5vUnf7+rTrE+8GtkJCyPFulwNwuYTIs4xMZCK1qhG8YH
         PKoT1vhS/5hDpltVCPrGHR1eSsNQ7Bqqr2+BlX9a6fH1ZTcIshCgYkjzSjkC1nF9nNJq
         BoQR3mc2/i2DGO9x7xerejXbxFIQ8vahoaX/avbnXyskZiQavz2tq9/SsKnb8zV8/3Zj
         hL6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=ONN8XavD;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id v31si676294ott.5.2021.04.23.15.25.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 15:25:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 60834956febcffa80f49fd4d (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 23 Apr 2021 22:25:26
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id C581CC43217; Fri, 23 Apr 2021 22:25:25 +0000 (UTC)
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
	by smtp.codeaurora.org (Postfix) with ESMTPSA id B4491C4338A;
	Fri, 23 Apr 2021 22:25:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B4491C4338A
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Randy Dunlap'" <rdunlap@infradead.org>,
	"'Arnd Bergmann'" <arnd@kernel.org>
Cc: "'Nick Desaulniers'" <ndesaulniers@google.com>,
	"'open list:QUALCOMM HEXAGON...'" <linux-hexagon@vger.kernel.org>,
	"'clang-built-linux'" <clang-built-linux@googlegroups.com>,
	"'linux-arch'" <linux-arch@vger.kernel.org>,
	"'Guenter Roeck'" <linux@roeck-us.net>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com> <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <fa0bed95-5ddf-ecad-0613-2f13837578c3@infradead.org> <CAK8P3a0ttLxzP0J-mocxB2TkfEYJYj37TdW=uM65fB4giC_qeg@mail.gmail.com> <026d01d73877$386a1920$a93e4b60$@codeaurora.org> <027401d7387e$f5630120$e0290360$@codeaurora.org> <24da08a4-e055-d8ac-8214-97d86cdcfd3d@infradead.org>
In-Reply-To: <24da08a4-e055-d8ac-8214-97d86cdcfd3d@infradead.org>
Subject: RE: ARCH=hexagon unsupported?
Date: Fri, 23 Apr 2021 17:25:22 -0500
Message-ID: <02a501d7388f$8dfb3b90$a9f1b2b0$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQHA6GaHPKlqiI34kZpdCyOyqmKBQAItWAQVAeg2vD8CQqkwGgKUjDBFAndwqiQA36lpqaqNLeCw
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=ONN8XavD;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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
> From: Randy Dunlap <rdunlap@infradead.org>
...
> > It's published as a container in the Gitlab Container Registry.  You ca=
n use
> docker/podman to pull "registry.gitlab.com/qemu-
> project/qemu/qemu/debian-hexagon-cross" in order to use it.
>=20
> Hi Brian,
>=20
> Maybe that will be useful to someone.
>=20
> However, I am looking for something like a tarball that I can download an=
d
> deploy locally, like one can find at these locations:
>=20
> https://toolchains.bootlin.com/
> https://download.01.org/0day-ci/cross-package/
> https://mirrors.edge.kernel.org/pub/tools/crosstool/

Randy,

	I 100% agree, I would prefer a tarball myself.  I have been working with t=
he team to produce the tarball and we haven't been able to deliver that yet=
.  No good excuses here, only bad ones: somewhat tied up in process bureauc=
racy.

I can share the recipe that was used to build the toolchain in the containe=
r.  No Dockerfile required, just a shell script w/mostly cmake + make comma=
nds.  All of the sources are public, but musl is a downstream-public repo b=
ecause we haven't landed the hexagon support in upstream musl yet.

-Brian

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/02a501d7388f%248dfb3b90%24a9f1b2b0%24%40codeaurora.org.
