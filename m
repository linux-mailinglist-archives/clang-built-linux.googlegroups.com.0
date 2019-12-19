Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBZEX6DXQKGQE6GIBOFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD2D1271C0
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 00:46:45 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id o14sf3774409otp.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 15:46:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576799204; cv=pass;
        d=google.com; s=arc-20160816;
        b=ELWFApiRpDwX1WWYR8MLlqgxTTU3QSFXWQWr5rVAT0LtSZMsCOlmk57OmjrhKhaI6g
         sr2F/1iA0Np5j1ZPDKD+pDZPLF4qBkYUToPtqa/STFzuLz7E4O8iNUp63zFqIC9hpsY5
         C003OvomPEo7M6xc6n80QW/slu0tMw1CoFxNa6ly2S7437B0+sb3Cl6MQdoMKuaPWPxL
         QjzoG2/Dq0sO8CBOUJNWvYA8vaJgZha39Y6mLe/wvKTURNTD0z/GhHPWHCIxBtuTdH++
         i6CT/gWk4cvEc4Y6/BX3H4TYfuBWwweqs9KIZuY5F9IUI9Bj5Tn+1a40OCJuN7Kyz+ho
         TMJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=cSWefAas08NNMRdFNAfrZ1GQgsASKK5uIvbAfycINcs=;
        b=bdCL2MD2xBBfGyGE3//+toK1TX2IMqMIOflH+cv30F4tvsaovfoR/fiE0hmAux80yr
         wa8ePi0KUcS97C1Dk3v4BejzdUaREC5yi7Pn0SItZkDdXgXBTqOVmMPQUW/xKroThzay
         1I4v80XM2Ty6lQMURKTJU3DbwZSwWzjnDxaF2JepWdFc+suKs6t4UEckHvZR94Htu+zU
         eCvngbeg6YDAjxfisC/VDq0yyPWUhbPl5FBlWkP5oHmTl7Mbm8P6uETEo6+QUO9cFnX1
         wb+jMmtNuNZ5S++WLZbfgdSSkLyReKoj31ZmT9TndOG5mjIpJyJ3x8fkB82uTy36hRej
         kHEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=Eno347+C;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cSWefAas08NNMRdFNAfrZ1GQgsASKK5uIvbAfycINcs=;
        b=QJM4b9hNCRbnH/gVuVJLCunB53STI13igewjEKGuYUEBwoHN7Jl7UZN8qb01LSzqaj
         w9e3R33Kcpz2pLoZ1jd5XBCYIZfpGPcT2mjYswsn6ie+ZPx41OjT8qI1CSSQR7bk+p8f
         +VFDdUMtffUCmE5dlIDjJQW/WbXuzo9WjAWb50OzztGa1LpGOCjV/3ANlVQEj4M+7sCf
         0fxfTjtXsTTJ7VAC3aArFL5Ut3+oDiFqq+wRoW3gIcJQ/+d4rskcl7E3TBbAeHcwW7Qc
         NuPMNRFN7x1A0EwU33rHYhHz3wXd/VPe8g3zkPFXqj9lkloL/n6fw6j6pn6c0S9IOeEC
         00Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cSWefAas08NNMRdFNAfrZ1GQgsASKK5uIvbAfycINcs=;
        b=L140B3y60Xq3wXlvr5ARMtoMUKN8LCk959xR0FRrM4gRNFAMm92UnoUqRCZv2MzZ7C
         tfm+ZAulq+bRE0AK1T3pu3JIl7c3WUeB9tltdVmsGALXpXmGExDuwepRxBmQe6uyL+R7
         SGmLqjJTj7EwjpMt30vxHKwg7cUp2kA38w7V6QFRuMhI8XqtW7xerY8OO/jP7YDpXdtC
         P62SGP5fxWkq/nnOgQAKruqf4O/KRPa57T2T5ZHVpZK7pSaG7G8dXMqCleOjzXvQe1nx
         AiPxI5YtPN45zSV6RzkwlrynCMRfllBwmISoGyEZNFrskfwFgtF8NkoHjoR5n2Mz/rL3
         pQPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXsHUmFt8DIrgn6KhCXPUp3rRiy9UGpe999r6dS5vp6BUFTSUry
	ZjtmFOffCWwn47w0GsS/8lM=
X-Google-Smtp-Source: APXvYqw4BAtg04BLQZ9gfQ/QkO50IZJenKKjiAF54hI0TnIL6CR31nCslexZzmhBsn7Du8msraKCAQ==
X-Received: by 2002:a9d:6481:: with SMTP id g1mr11893672otl.180.1576799204261;
        Thu, 19 Dec 2019 15:46:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7dd6:: with SMTP id k22ls160818otn.5.gmail; Thu, 19 Dec
 2019 15:46:43 -0800 (PST)
X-Received: by 2002:a05:6830:2102:: with SMTP id i2mr9800962otc.123.1576799203902;
        Thu, 19 Dec 2019 15:46:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576799203; cv=none;
        d=google.com; s=arc-20160816;
        b=QTk31dDLc/Fs9ogY6hdKieBdAhVIN1UFHJgc7odUp8zXWhPNTUk2We/mK8JkmXjeBm
         5xKa5M0qC6RWLTSNRx2JaukIBnyX139N2PVAVbfmHdy5qTnNKf/mCh2Nsl6iCjdh+m+A
         M9GiKICfCH7x933dfckbtMoefC60TAn4hgjJeu8my3+PCaC21EOZ4Ccma/dcPMrD7Qz7
         68hqZnXlE+tF4dg2gXDu+3fQDsSga1KkPXQ4fVLd19ATxBc2sLPKHy93A5rSnJ1DvjU6
         XJdVytN5OcHI8O3mJu/RgAoAz0Nxb4paZAihLnc/Y8D4l9xxs0YC31N5HON4l7TeH56j
         DqDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:from:subject:cc:to:dkim-signature;
        bh=IodJzwI8PFs9vVIpijCi4izk4i1NlVvsiayVXKeYFRM=;
        b=rYAiTkFMu+JH0UNxtlxDVVtbrSKI47Kvq6kWdNku/EWwDattEMIcqPR1SWTnoY68Du
         C7BmtMqI+OVijqiGUIKjrq53EoyV/cZgNiew1YgkYK1mW5cJLQxvgR+rQezUc/qNYlO1
         zVTTYYJ/q7CeyDglGRMaaJk1XSiu8St++5ckLIZBlZ3o0xVSvnkA/nP0DGbrRjfMf94z
         5KMTQpbmlwarzfiWaCMZM6lG+t+kBCkAA83s906Ik8cSg7GbDx1oCvG2aCXRaNs+u3nu
         SDoq7YMqUDJ5qmmEFCGtNCVVG/PuYNgcM5yEI0DacfLEZTeHsZxHt0gzhdD58OKnikLD
         yVgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2019-08-05 header.b=Eno347+C;
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id e14si66137otr.1.2019.12.19.15.46.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Dec 2019 15:46:43 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBJNT02r073662;
	Thu, 19 Dec 2019 23:46:42 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2120.oracle.com with ESMTP id 2x0ag12wcu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Dec 2019 23:46:42 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBJNYLcV113556;
	Thu, 19 Dec 2019 23:46:41 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 2wyxqjf7dt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 19 Dec 2019 23:46:41 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xBJNke2B023715;
	Thu, 19 Dec 2019 23:46:40 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 19 Dec 2019 15:46:40 -0800
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: QLogic-Storage-Upstream@qlogic.com,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com
Subject: Re: [PATCH] scsi: qla4xxx: Adjust indentation in qla4xxx_mem_free
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20191218015252.20890-1-natechancellor@gmail.com>
Date: Thu, 19 Dec 2019 18:46:38 -0500
In-Reply-To: <20191218015252.20890-1-natechancellor@gmail.com> (Nathan
	Chancellor's message of "Tue, 17 Dec 2019 18:52:52 -0700")
Message-ID: <yq14kxvc201.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9476 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=879
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912190173
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9476 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=942 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912190173
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2019-08-05 header.b=Eno347+C;
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


Nathan,

> Clang warns:
>
> ../drivers/scsi/qla4xxx/ql4_os.c:4148:3: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>          if (ha->fw_dump)
>          ^
> ../drivers/scsi/qla4xxx/ql4_os.c:4144:2: note: previous statement is

Applied to 5.6/scsi-queue, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq14kxvc201.fsf%40oracle.com.
