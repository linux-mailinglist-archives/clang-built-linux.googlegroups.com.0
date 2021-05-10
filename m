Return-Path: <clang-built-linux+bncBDIZTUWNWICRBZMP4SCAMGQEUTQD5CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EBD378103
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 12:16:06 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id t2-20020a170902b202b02900ec9b8c34b6sf5729481plr.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 03:16:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620641765; cv=pass;
        d=google.com; s=arc-20160816;
        b=go1bjDYgwGBoVecmVEgXliiGs3tojWKO+0FtWNMd3ENzgaNnJHv5SSk66ZDCc2Fnpp
         JhpplAbi8iHszgpvwu/XJpNFtyilAmwNQqe5GUv4U8LCKpyaepohFuDluM47rX15gfFl
         Cch2aLH4AcBfYej5sDlgYu51WEv9mv6rQNeS4P+xcr/dxK5VlYLDACe4wslmJNyg0dmx
         AxzX5IHVhGDHHlzYL3DYmiQ7NBmTVx3Y0xG+05Fzmhe4RTYD7RrRVQsYqUGJ935r5LDb
         T/FsBXXTNLUMA6iRzIXq5y0P97IJL84aDYZtxwCtm648Kp+1LiVJr/cHzZqcaL+gi1TM
         F7jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=iOecr3te7Gehsyu94cbe8c0bTQlF1WkzQ3OVhxtiDZc=;
        b=Wd64C5tDkQoiJPLdGZ1ItB/3UU67juAYlzfwg0N9zLtpxco1TawAO5dSQPtmMaGQCW
         mDlkiCfVPvUyoxz236aQyd/tgabh/+1q51UvCrDlMXIu7JXeiDT8IUrhYJsb1Vu1gQ4E
         AsuWdlXOW1t1TrbmcOqR2j1axVBXa75+fc9akG54/CpCVxC0eamwYyvigNsVP5SHigVQ
         8NjWyhITjmAM5GFVjV1naTQSoniu964gGEtVBMiqmgHM6Y4Zt8/PURaFhHbaSJ+UAEPh
         PCnwpXyItSUByN1OGByDZOejoYjb8fF4cqRj+sjxZ2D68wML1L0CaTBmeqSrXK6wlp/L
         QpXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Z7MdwOsS;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iOecr3te7Gehsyu94cbe8c0bTQlF1WkzQ3OVhxtiDZc=;
        b=E07McLz5fahlUyNJXrdfr0MzuCPP1O2/k71zv1hi1nS62iEZr8zDLAWTQWeXXxkRM1
         qzjo7yudtKSb+keChOb+dMpc5b77GgXQbTp2FCp5nx26a9BpkHorJlqi4Qc+z4aGI70X
         r1Mza2YwF13zZaCRnsW2h2mbL+qe9RYfowo3EFUcKErn4sLL4d32jlx5AmSLG78wl0c0
         HkniESEGMclRFKihWf/gmLdksRPjAXvygK7Uzs7qem4tBrhm9PefPp0LUFudwguBjoiu
         uGS1I/3JQushxHs9DFppOjlWP4RfsRfCl/KI7S189MLNuMF5W/i5qZasFA5wm9Fgvmkr
         FYbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iOecr3te7Gehsyu94cbe8c0bTQlF1WkzQ3OVhxtiDZc=;
        b=kRTlOBYeoHi8RwsoSGmwSp7qxxhUhp5aqb5VvN6RUWMg0Evb2eYFRw16EaaBPYlu4h
         K5Z0G2eJvbCUD4iwPxdRbeqg6zb9WZ6TQe85vc4CzK3Ojw3ZZjgo15+aNVuCMjQBzSsR
         uS4RN6dAUOJUI0HPSE0B7jDN1vPwr8wz+lXi0BtTq+LrOOwk9Omavn/0VzGLsZyi6PzB
         fytrb74srOGX77zaQm3Xr4INLc81v7EkRUbsFKyr0v35IezTi4w/P9nmq6fYpIE5133o
         okcHevx/DhhJrKuznQVCXDQ8sK1FedotmDSEkpY2P7VKTBU+i2Bb9UJiAnhkHgActGDt
         mmOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533x+G8RFWwFTgpo5YB74JfIkq9W5DMN3/tmlqagsGB1p2TI/Zkh
	pKXUxn5M16nD/S8MCoR8zF0=
X-Google-Smtp-Source: ABdhPJzwUo4TBKTZnFpNfq8pT+2cWxrusWClb2/ZWqWOuM/21hoq03BMDPHcEM2tRhZ2zhN7CuKRlg==
X-Received: by 2002:a17:90b:1b0d:: with SMTP id nu13mr39201167pjb.149.1620641765242;
        Mon, 10 May 2021 03:16:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ba08:: with SMTP id s8ls8433148pjr.1.gmail; Mon, 10
 May 2021 03:16:04 -0700 (PDT)
X-Received: by 2002:a17:902:bcc7:b029:ed:6f73:ffc4 with SMTP id o7-20020a170902bcc7b02900ed6f73ffc4mr23380222pls.1.1620641764777;
        Mon, 10 May 2021 03:16:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620641764; cv=none;
        d=google.com; s=arc-20160816;
        b=RD4pcUd6HH2dxG3d8xemZTK5F5/WwgNg0pgqAhwYhE7RHzoEV8uRM2XMs7XTXTrua5
         LkkXwTC2QNpJ/OEwgBAXTry3fbO4yNJ4QSgUhZVEUh0O82EASmUrK9v8mpD/Ue05QGHY
         c2Q0vuxQVZBeOGwGha3AGh8FteGmyX4Nmvhj7RjPAaIB8CXI6EcH5+Qk2SYVCnli5d9x
         cQ+nPzahnV8BKc9gR+TUugX9jkTFbNay1XKY6PNmFecv1Pw/Tz9QLi9iXdwxO4urxE3Y
         l3JUmwzBRihir7uvG62pm6hLHZeY3ow2HSyEJV1eKsm3TfaF7L9QwW0X4Xa8yVQo7E5A
         CXEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=NBGUUTnNekDnbhp+d6K0inIIPOKWMhSvU2zPiD9ILDY=;
        b=mIN4eFZE1kvwFWffdba9gJdfrYwDSyT+vJbYzzCYvzfr0sfpWk965w5pFjJALbAt67
         p/E6qj2uF8/PeQecmWXxYoOfNnYWWfJ94OWCOQ8T8cFxUlVSqs3Gfgo44rVYC8VxtHWF
         u1ZZg66KMbimBrcOV6pbyUXiXxmnnfk9OO03qb8eZLCEBC/Mi9CWsKgqT7HaZEUQnRcE
         0l6IBZdLq0fO0DjN2l309jWQ8aXDDz/DMEYohzFgvrPRCGdRHBPiYbrwBckvPryZKZjF
         akStwt5IR7OPFn+08gvsdWjzWmx5lEcQ/Uz0UAwpzvi4+9LH5benKNls62O6LxQbR6JI
         xLgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=Z7MdwOsS;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id md7si1985780pjb.3.2021.05.10.03.16.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 03:16:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14AAEkGK026936;
	Mon, 10 May 2021 10:16:02 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2120.oracle.com with ESMTP id 38dk9nap7x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 10:16:02 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14AAEaOu116583;
	Mon, 10 May 2021 10:16:01 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by aserp3020.oracle.com with ESMTP id 38djf6a9eb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 10:16:01 +0000
Received: from aserp3020.oracle.com (aserp3020.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 14AAG0ZK122591;
	Mon, 10 May 2021 10:16:00 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3020.oracle.com with ESMTP id 38djf6a9d3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 10:16:00 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 14AAFwU8009144;
	Mon, 10 May 2021 10:15:58 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 10 May 2021 03:15:58 -0700
Date: Mon, 10 May 2021 13:15:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Cc: Michael Zaidman <michael.zaidman@gmail.com>, lkp@intel.com,
        kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
        linux-kernel@vger.kernel.org, jikos@kernel.org,
        linux-input@vger.kernel.org
Subject: Re: [PATCH] HID: ft260: fix format type warning in ft260_word_show()
Message-ID: <20210510101551.GQ1922@kadam>
References: <202105060637.LeEC6ztp-lkp@intel.com>
 <20210509193213.5974-1-michael.zaidman@gmail.com>
 <26e1929386babea33d4a320b506c5247caacde77.camel@perches.com>
 <20210510091730.GA2276@michael-VirtualBox>
 <7c0f57c1208b09742c839b1c1e54e2b79c83b8af.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <7c0f57c1208b09742c839b1c1e54e2b79c83b8af.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-ORIG-GUID: tVlLfI4TERApjT5Q0lL99dTne1CBUEm0
X-Proofpoint-GUID: tVlLfI4TERApjT5Q0lL99dTne1CBUEm0
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9979 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 phishscore=0
 adultscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 clxscore=1011 bulkscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2105100072
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=Z7MdwOsS;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
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

On Mon, May 10, 2021 at 02:52:14AM -0700, Joe Perches wrote:
> On Mon, 2021-05-10 at 12:17 +0300, Michael Zaidman wrote:
> > On Sun, May 09, 2021 at 01:39:29PM -0700, Joe Perches wrote:
> > > On Sun, 2021-05-09 at 22:32 +0300, Michael Zaidman wrote:
> > > > Fixes: 6a82582d9fa4 ("HID: ft260: add usb hid to i2c host bridge dr=
iver")
> > > >=20
> > > > Fix warning reported by static analysis when built with W=3D1 for a=
rm64 by
> > > > clang version 13.0.0
> > > >=20
> > > > > > drivers/hid/hid-ft260.c:794:44: warning: format specifies type =
'short' but
> > > > =C2=A0=C2=A0=C2=A0the argument has type 'int' [-Wformat]
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0r=
eturn scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0~~~     ^~~~~~~~~~~~~=
~~~~~~
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%i
> > > > =C2=A0=C2=A0=C2=A0include/linux/byteorder/generic.h:91:21: note: ex=
panded from
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0macro 'le16_to_cpu'
> > > > =C2=A0=C2=A0=C2=A0#define le16_to_cpu __le16_to_cpu
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^
> > > > =C2=A0=C2=A0=C2=A0include/uapi/linux/byteorder/big_endian.h:36:26: =
note: expanded from
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0macro '__le16_to_cpu'
> > > > =C2=A0=C2=A0=C2=A0#define __le16_to_cpu(x) __swab16((__force __u16)=
(__le16)(x))
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > > =C2=A0=C2=A0=C2=A0include/uapi/linux/swab.h:105:2: note: expanded f=
rom macro '__swab16'
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(=
__builtin_constant_p((__u16)(x)) ?     \
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > >=20
> > > > Signed-off-by: Michael Zaidman <michael.zaidman@gmail.com>
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > ---
> > > > =C2=A0drivers/hid/hid-ft260.c | 2 +-
> > > > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> > > >=20
> > > > diff --git a/drivers/hid/hid-ft260.c b/drivers/hid/hid-ft260.c
> > > > index 047aa85a7c83..38794a29599c 100644
> > > > --- a/drivers/hid/hid-ft260.c
> > > > +++ b/drivers/hid/hid-ft260.c
> > > > @@ -791,7 +791,7 @@ static int ft260_word_show(struct hid_device *h=
dev, int id, u8 *cfg, int len,
> > > > =C2=A0	if (ret !=3D len && ret >=3D 0)
> > > > =C2=A0		return -EIO;
> > > > =C2=A0
> > > >=20
> > > > -	return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> > > > +	return scnprintf(buf, PAGE_SIZE, "%d\n", le16_to_cpu(*field));
> > > > =C2=A0}
> > >=20
> > > There are 2 of these so I wonder about the static analysis.
> >=20
> > There is nothing wrong with the static analysis. The first scnprintf fo=
rmat
> > type is perfectly valid as far as its size is greater than the size of =
the
> > data pointed by the *field pointer, which is a one byte size in our cas=
e.
> > The static analysis warned about the second scnprintf case, where the f=
ormat
> > type was shorter than the integer returned by the __builtin_constant_p.
> > This warning can be considered as a false positive since the le16_to_cp=
u is
> > all about the 16 bits numbers, but to silence it, I submitted the above=
 fix.
>=20
> $ git grep __arch_swab16 arch/arm*/
> arch/arm/include/asm/swab.h:#define __arch_swab16(x) ((__u16)__arch_swahb=
32(x))
>=20
> otherwise:
>=20
> static inline __attribute_const__ __u16 __fswab16(__u16 val)
> {
> #if defined (__arch_swab16)
> 	return __arch_swab16(val);
> #else
> 	return ___constant_swab16(val);
> #endif
> }
>=20
> #define ___constant_swab16(x) ((__u16)(				\
> 	(((__u16)(x) & (__u16)0x00ffU) << 8) |			\
> 	(((__u16)(x) & (__u16)0xff00U) >> 8)))
>=20
> /**
>  * __swab16 - return a byteswapped 16-bit value
>  * @x: value to byteswap
>  */
> #ifdef __HAVE_BUILTIN_BSWAP16__
> #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
> #else
> #define __swab16(x)				\
> 	(__builtin_constant_p((__u16)(x)) ?	\
> 	___constant_swab16(x) :			\
> 	__fswab16(x))
> #endif
>=20
> Under what condition does the ?: return an int sized value
> rather than a u16 sized value?  I fail to see a path where
> the compiler should promote the returned value to int _before_
> the promotion done for the varargs use.
>=20
> If it's for the varargs use, then both instances are promoted.
>=20

Ternary type promotion is a horrible thing.

	foo =3D a ? b : c;

Everything is type promoted which ever of a, b or c has the most
positive bits.  Or if none of them have 31 positive bits it's
type promoted to int.

I sent a series of patches earlier where one the a, b, or c was
a negative error code and another was a unsigned int.  And foo
was a ssize_t.  Because you end up type promoting the -ENOMEM
to something close to UINT_MAX and then it doesn't sign extend
so the ssize_t value is not negative.

regards,
dan carpenter

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210510101551.GQ1922%40kadam.
