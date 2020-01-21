Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBAUYTXYQKGQETKKPGRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DAF1444D0
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 20:07:47 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id i8sf2381021ioi.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 11:07:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579633666; cv=pass;
        d=google.com; s=arc-20160816;
        b=wFSF9B8ouD12NhuJeVk8EqGs5dXye4CfX+6p9MjXbMw3aM67Vw+d8g7IxhlJFpkwhU
         Q2+MvA/X84auK0Y0V6NL11ZEMETEh3TWWTtl6cATf4co+dnfduK+6hoL8optW0H3rqSP
         a1UaZ+UtNMTjAzm660H8DlXxXwOrg5gCXiY8yRQddF2vV0omQQXdqrCgL9gMqhTYhM7r
         tWPNdvLU9Io22CPVMQ8jYSFUT0UGnp/4dUR7RmX91VqnmOX3MPgtohIP8FxnK79jTPZb
         xJpQc6AJ56wIgrSbmIi6zpRhOt2IsDuS8Ersgh3zqBtpbgyHsFCD9Bo5gQaL0MOj1MHO
         /U5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=TyrQlsLsCHMCoVTTZq5cdri9O8SZINcPEdmYrEYtRWA=;
        b=SCzgiMuf208mmJ1a+8mQii2tUzFjPvwhXjMCAqqZegQS3SD2hwkTPnpa+e0x+eZjKD
         vrgzHGMzjis4aX9hh5GhSiotdsMM7/1S+7OfoksKDLkhAM5WJ6IcsiFRxF+NURXA/iaa
         xtKdeS3z6vm0vBlkbiMr8zLAUzdj6Eea9syV2vnNkXG848FIsnjHLTH/RtffNRv4Bar3
         d6ADZ4MJ7t3s6mEWrzQJ1C0BejM8oYYVHsMbDwlg/QGBqKzqWgXYdqZXY/UmhDh7Wypw
         1iHn2kuMGUsR9Uz+go+DHtBLTt0jtNtaqGXPuiLybBzVw+0f+ozOYSGaJSmd2jjebepu
         pVuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=MgZzhw1a;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TyrQlsLsCHMCoVTTZq5cdri9O8SZINcPEdmYrEYtRWA=;
        b=Q7fnrp+IfPS/lBtx29KI3QR11XkZVFUG0ZkkcmAn6HJ8Yv8sTBiW4+PsEGSM/cL6qd
         b44wm7oxk1YioAc4Ef/8+QqXCFFMD+BZXTkNgMPx414gOPUmeSB6HXZo9cdfVhtyqpGZ
         Oj8HY5zGX0C1J3Tx+kkQc9pJwUDe6nxBv7P7eDDzyBWvTCpAQ67f2un3kFVI08F0Uvqc
         7rVAxhqSRTej4AUdNs4f3LukYu2DdOWZWxS0oq5NLtu4vXWuTNTPmi5njk+vlYteTgnQ
         ip43NjclJL4E0SCb1AHsSAJ25X5xekU+0gSt/LircxCHYZN/XtmRW90gQr1ouuLP7uI0
         nHrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TyrQlsLsCHMCoVTTZq5cdri9O8SZINcPEdmYrEYtRWA=;
        b=lYyFzGZyP76iSt/mbPbWvyyoOW0j9ftMJZvZb/dWEgYzTt+fXLviYCXy1SGzm41krf
         P5o436STMYL/DM27G+FV35df+uzCw7jyrhWxnbQ9TPCp+Y+/StxS3dIKJ/Xn4bvdT19H
         8DTjkRnyQ1qtRdp1RJhuj0OGz9ELX21bQmdZEHwn93Bjt16KPST1lvG/jXtkur9kKX5P
         oHh+5XL6f2oGXkPYn+B/xBOrbKbqbYSHiLrSXXwer8ptc2WgB1zNefK775WKUMK5J0O0
         y9iELH4exisj7Am+t7IWvc/gFbKVWJKt0eFrgJYQI7k2S47NWMr2w9AkscDzuyXlbklh
         c57g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWhMuZ3Og5eYAf2HPKi+I+riL3IJEfdQJFZiTyYLXVRqFGvjiiq
	LDT4yrPeS78jAx7bXOEYS8o=
X-Google-Smtp-Source: APXvYqx3zuy2WB7Sokdd+VCvmL9QZG2FbngIPKWFdh3uVv0RE0in195dcplhrRR8ZugJycHoCDtisA==
X-Received: by 2002:a6b:f404:: with SMTP id i4mr4222633iog.175.1579633666660;
        Tue, 21 Jan 2020 11:07:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7a08:: with SMTP id h8ls5727185iom.4.gmail; Tue, 21 Jan
 2020 11:07:46 -0800 (PST)
X-Received: by 2002:a6b:7703:: with SMTP id n3mr4283958iom.229.1579633666324;
        Tue, 21 Jan 2020 11:07:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579633666; cv=none;
        d=google.com; s=arc-20160816;
        b=Z0NIE6vgCOmNtytCBMGwlnYFIyKsITQAezp08iq6Ikt4s79Y+Ejh6ir8tRfeVPfcmh
         v5uwQy2nIVAVby/PPFAWClz5QYzGoTkMNOuBrebSEDJTIc7Ajeh+cLGcpkd15Nev4Y2n
         UCrYKPDZd+vnm9YV+KlqegMQiMwZs9r2v15rZRAazMCuQ22mS6E1eGpRAC2JXYToGLWO
         5a2+JCVCzpZhA/r7kOU4rVBXWE0d1daxyjCieL1zY8S+yCKb2fUxrd8WaaLT+OLOO+xF
         DWB2UBAXQqu/xyPkeZ2MzxH06+GJMDH5+HxsTtKFA90xMb7fPypsd/7EAo9jvp6hgZQ5
         0JtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=JkJi1il0YQA65HZ13c4ksDYfpcNXURvckd7+ve8kOSk=;
        b=YRcKzItQhLc0kwxIUD3d3zQVhmBCi9ZLJWnjXJ1BbWQL4zFSMRLUWbQFp+Uii/82GH
         ZEb2kJ4AtIyGzSpqnDOn08OfF9XpUUQKpcHOUbZb/hlM2BwEDIahbEIoFfX7D4dQvGYH
         X1AX8ZAVeUh3paBdXo2wn/VqH8IBMkLVi2+6jbDLsQyUuy4lSBmTYNBGbKbTDVDxTMox
         yDoCNfvlr+Ocp0dj6xiC14cgU9shC5i6p6wbv9TNpu1FtEWRBIVKal7OUU20eCM9nKR2
         XcIANDpjpmGrTTPqmWFz5jUZbBwJoENHtHvZYPQihwqpD35GfvlGjwuzPRknSCyHN+Zl
         EN3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=MgZzhw1a;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id v82si1748732ili.0.2020.01.21.11.07.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jan 2020 11:07:46 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00LJ394p022048;
	Tue, 21 Jan 2020 19:07:43 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2120.oracle.com with ESMTP id 2xktnr719k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 21 Jan 2020 19:07:43 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00LJ36uB075691;
	Tue, 21 Jan 2020 19:07:42 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3020.oracle.com with ESMTP id 2xnsj56cty-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 21 Jan 2020 19:07:42 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00LJ7e54022970;
	Tue, 21 Jan 2020 19:07:41 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 21 Jan 2020 11:07:40 -0800
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Thomas Bogendoerfer <tbogendoerfer@suse.de>,
        Michael Reed <mdr@sgi.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        linux-scsi@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] scsi: qla1280: Fix a use of QLA_64BIT_PTR
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20200120190021.26460-1-natechancellor@gmail.com>
	<CAKwvOd=30bpBXqrT6LfwDb+YrTcGtTg5NL34dpc3Vkfe11KvFQ@mail.gmail.com>
Date: Tue, 21 Jan 2020 14:07:37 -0500
In-Reply-To: <CAKwvOd=30bpBXqrT6LfwDb+YrTcGtTg5NL34dpc3Vkfe11KvFQ@mail.gmail.com>
	(Nick Desaulniers's message of "Tue, 21 Jan 2020 10:43:06 -0800")
Message-ID: <yq1r1zshbly.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9507 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=443
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001210142
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9507 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=506 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001210142
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=MgZzhw1a;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
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


>> ../drivers/scsi/qla1280.c:1702:5: warning: 'QLA_64BIT_PTR' is not
>> defined, evaluates to 0 [-Wundef]
>> if QLA_64BIT_PTR
>>     ^
>> 1 warning generated.

I already merged Thomas' patch for this issue.

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq1r1zshbly.fsf%40oracle.com.
