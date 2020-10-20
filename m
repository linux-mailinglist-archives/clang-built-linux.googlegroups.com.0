Return-Path: <clang-built-linux+bncBCLP5MGRXAORBXGIXL6AKGQEBGOFGEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6727D2936FC
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 10:48:29 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id d9sf354657vsl.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 01:48:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603183708; cv=pass;
        d=google.com; s=arc-20160816;
        b=MMh4qkLcPBF7k8fmDGRZInChfh9xFt2RHBIghWYHMlzLAvDN6DT0iEzPBPW2evUTAc
         mdquTHZKgCuS0LRx4+Pi44qt4nIYW4N6toxSAnXBZFkIdzyaEuq1k2/tNsLVEroKHzpD
         mbQAMbXYZ2qASJM250nsV6twd/LrlF/kSgNFRNbg31GEDaR71qd9TOYS8UsG5MFLyCb2
         35/aeLT4cwkfkA6Q2Q2LC+KtO1KakGkkNOD41EZrka4eTS/ZoRDVg/Fw5zLnk83ZLqTh
         Q370DLhbMA53zKtdBRU9nHooqHiDHJAyJkJrMtL5aq0ucHcrmlB/Uqd0X6EycpVZQEak
         CWqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:to:cc:in-reply-to:date
         :subject:mime-version:message-id:from:sender:dkim-signature;
        bh=lGTG5KPf3zzNkm5oanP/AVDyThKakP3+kBMj3Wm/PZw=;
        b=AIPlm85+KOnbM5ANmYyMgNuW13txTpfICh1itTJzbaSYLtdjya3XeOeS74xLHi99SS
         OEHFkLASotcMdZvxwKjHDmzylQHgLMSzaeD5pGQX7ZUEWwoYfN89DB9ZHKEmTYv3zsDS
         ZKPG2Sz/BOFSh2qonshcr+1t2ilyR/EDIQKoIPRY7jY60qLx/00OVj10HnDpAtHYiJED
         bBk+ZuqWcYBjIiUKj9PNGgPumgjBF8Txj4tykGWozQZUClIwWbmY0jjvfIbgMt1OjscX
         Zzgi3Ae0+0Hcl2iQ3RSchi7mYNO5J477EUiTiERABvJysWabQlV5E1iC228tm2Ffg8zz
         ysjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=q8gn83IP;
       spf=pass (google.com: domain of john.haxby@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=john.haxby@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lGTG5KPf3zzNkm5oanP/AVDyThKakP3+kBMj3Wm/PZw=;
        b=m4ol+0hSHSI0/c2uQnwqRDsVBS0FXeG5DPzcjOk8YsUWpfzg8GFHikmgMKj486GXNr
         JD2UT7BSe3vLYDVoXtOCJ+PmNl7q6/vRlFTCtwAUbUuIlGe+mikXGKjhDVJCr+jdRFxi
         Ch0nSpGcdVoOwlBD4WEXOpzIbbHTijvSE6cmYFukeNfXt23ZojPCTYZNvdj48YPfoIzy
         sAaa+byNUEFVOhZscPADkxvDppA4UPTbriE7OQzLEZr5/UWeGsZWE25gdLssgafT/xeI
         PLJOHanv0EXg7i6ekT5/D56slRVjEmHN9tAw0BVt6HTdJGZSrJvstB/LvRoBF5v5qWto
         N78w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lGTG5KPf3zzNkm5oanP/AVDyThKakP3+kBMj3Wm/PZw=;
        b=rpdWEVpjkbR7ms0Rj6hfO63D5TAxdEdk9X0eXJ+VHkyvhuMC88idx8f5Z8ISGjRvUG
         AfB44CH11wp/S+PmaYurhzi6H1kCCJyBuklv02HfwkhwXWgRIg3jJsf9pYFcDmu9icV1
         gitx8EaYC5hREC4QDOjgYCKVE3y+B7Tn5dtjiRMQ3udGupQIfpXb07Vk7EKZIzCeu4nu
         57uh9R1ZHjGYm8VwmLtuPwAHiWEqojlWAglPdBFwy+auvdeHRzykErcwd2Sh5Q8El6MV
         VFVyO88/+BHfaZwHYLg97OZDsgNoGZNAqZPYJt0vYDd/Ve9xr7oLRHleuUcP74Q2bmmk
         WbiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ygCGSMBJoxzYrkwCcQe+MZGaj7Cjw+rADc3b+qnPlyZdWJdfh
	YT5zNvPC3xbAwPw2SUNA3iI=
X-Google-Smtp-Source: ABdhPJyIqPk9t85qQtzXjYYX3bWWdvUX0TNRLS4StLtqHzMSzqhY5NP2WtAjZ/7Czyna/CTYKUP9lQ==
X-Received: by 2002:a67:ed48:: with SMTP id m8mr783598vsp.47.1603183708427;
        Tue, 20 Oct 2020 01:48:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3037:: with SMTP id v23ls105353vsa.11.gmail; Tue,
 20 Oct 2020 01:48:27 -0700 (PDT)
X-Received: by 2002:a05:6102:408:: with SMTP id d8mr855592vsq.41.1603183707906;
        Tue, 20 Oct 2020 01:48:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603183707; cv=none;
        d=google.com; s=arc-20160816;
        b=JTg5rxGi0ntblXEWNu+vu5fpmX+xicMwKNuY+dwyDBo6DLgPoca0KlvifMDxykkJE9
         Nnt77abaYoyGGNrADGHVALHAicg48k5r1feQhEkPJZ9bNMXwIWSHmlXLRlubk1JLmPwe
         VHtY784UHcTA9AXxexz5bO3Vn6oKtdLaHq0wM82up4ycahB99v5w+6zbjGzMO1oYPLmB
         W9td4Icbn5dtJw2Q6UNaKEIO7ePCAplCwdVEuZYxVt2Ywlh0gd9A4cDG1LKAsiuAS51x
         jxpC0xWs1MS/+b4iNWLmP+rDD+rMUszvQ/bwi4DfbrQywv8mTZ1rSJx/HR0P/1FtL40Z
         9mUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:dkim-signature;
        bh=UBSvDuZX45rcdCwz1yIzvCzCqfd2joSCizhea4x+Xao=;
        b=E4Lecw359CQfu+gms/JDTihy1GYExh39mfrZB/mWiEqqMW1ZBDBtAoK8dm+je3UrV1
         7oalTmkI3DfwkPAPjpXu91gk36RtSa/6weeIcXbIS1sdwsCtj53GcA+2/fSEibxUwA/r
         RV5L31GLV0fXciEf6iboU6QB2CYqc4cFvifKfsUiI/GtxQ+kQit0JowRY8YlXWbELt8c
         1+kswnZv0hK1I4dF2ptYW7W5YrKnmr5TLGnPLQaMxAja7P6g96u97a2tmTvX3WYNT6dH
         Xf8xN265GNjnOepAUiSax1gL1LcB0XZAE3L76LAOqan3RWw+XmlX3Tg4RltPuEWBgQDK
         IjdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=q8gn83IP;
       spf=pass (google.com: domain of john.haxby@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=john.haxby@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id r131si61873vkd.0.2020.10.20.01.48.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 01:48:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.haxby@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09K8i7rI188082;
	Tue, 20 Oct 2020 08:48:12 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2120.oracle.com with ESMTP id 347s8msmp0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Oct 2020 08:48:12 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09K8is45150623;
	Tue, 20 Oct 2020 08:48:12 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by userp3030.oracle.com with ESMTP id 348ahw07cp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Oct 2020 08:48:12 +0000
Received: from userp3030.oracle.com (userp3030.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 09K8mAEe159753;
	Tue, 20 Oct 2020 08:48:10 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 348ahw07bh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 20 Oct 2020 08:48:10 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 09K8lvTX021447;
	Tue, 20 Oct 2020 08:47:58 GMT
Received: from [10.175.164.120] (/10.175.164.120)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 20 Oct 2020 01:47:57 -0700
From: John Haxby <john.haxby@oracle.com>
Message-Id: <27A23102-A7F5-48C5-8972-48CE4C283C6E@oracle.com>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_9F9749E9-79EA-41AB-B516-003ECE07BEE3";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Subject: Re: [Ocfs2-devel] [RFC] treewide: cleanup unreachable breaks
Date: Tue, 20 Oct 2020 09:47:45 +0100
In-Reply-To: <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
Cc: Tom Rix <trix@redhat.com>, alsa-devel@alsa-project.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Greg KH <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org,
        nouveau@lists.freedesktop.org, storagedev@microchip.com,
        dri-devel <dri-devel@lists.freedesktop.org>,
        virtualization@lists.linux-foundation.org, keyrings@vger.kernel.org,
        linux-mtd@lists.infradead.org, ath10k@lists.infradead.org,
        MPT-FusionLinux.pdl@broadcom.com,
        linux-stm32@st-md-mailman.stormreply.com,
        usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org,
        devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-nvdimm <linux-nvdimm@lists.01.org>,
        amd-gfx list <amd-gfx@lists.freedesktop.org>,
        linux-acpi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
        industrypack-devel@lists.sourceforge.net, linux-pci@vger.kernel.org,
        spice-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-nfc@lists.01.org,
        linux-pm@vger.kernel.org, linux-can@vger.kernel.org,
        linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
        xen-devel@lists.xenproject.org, linux-amlogic@lists.infradead.org,
        openipmi-developer@lists.sourceforge.net,
        platform-driver-x86@vger.kernel.org, linux-integrity@vger.kernel.org,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-edac@vger.kernel.org, George Burgess <gbiv@google.com>,
        Network Development <netdev@vger.kernel.org>,
        linux-usb@vger.kernel.org,
        linux-wireless <linux-wireless@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-security-module@vger.kernel.org,
        "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
        patches@opensource.cirrus.com, bpf <bpf@vger.kernel.org>,
        ocfs2-devel@oss.oracle.com, linux-power@fi.rohmeurope.com
To: Nick Desaulniers <ndesaulniers@google.com>
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018054332.GB593954@kroah.com>
 <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9779 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 suspectscore=0
 lowpriorityscore=0 mlxlogscore=999 priorityscore=1501 spamscore=0
 phishscore=0 clxscore=1011 bulkscore=0 impostorscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010200059
X-Original-Sender: john.haxby@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=q8gn83IP;
       spf=pass (google.com: domain of john.haxby@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=john.haxby@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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


--Apple-Mail=_9F9749E9-79EA-41AB-B516-003ECE07BEE3
Content-Type: text/plain; charset="UTF-8"



> On 19 Oct 2020, at 20:42, Nick Desaulniers <ndesaulniers@google.com> wrote:
> 
> We probably should add all 3 to W=2 builds (wrapped in cc-option).
> I've filed https://github.com/ClangBuiltLinux/linux/issues/1180 to
> follow up on.

It looks as though the URL mangling has been fixed.   If anyone sees that specific URL mangled, please let me know.

jch

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/27A23102-A7F5-48C5-8972-48CE4C283C6E%40oracle.com.

--Apple-Mail=_9F9749E9-79EA-41AB-B516-003ECE07BEE3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCX46kMQAKCRBFC7t+lC+j
yBKiAP90JVXdPzuAwtRGkROpw1eVCo7wCaZ5nOa8Oo0sN6gC9gD/S0eGTqQhmg+n
sXPJxPYqQsg09qmS6k/HX+AP5Oz2AMo=
=xx66
-----END PGP SIGNATURE-----

--Apple-Mail=_9F9749E9-79EA-41AB-B516-003ECE07BEE3--
