Return-Path: <clang-built-linux+bncBDIZTUWNWICRBMHIZL7QKGQEBXOUMOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C27C2E9068
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 07:22:42 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id j37sf15596026pgb.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 03 Jan 2021 22:22:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609741361; cv=pass;
        d=google.com; s=arc-20160816;
        b=yvrZQlQa8GEZ0JzQfXOEoJzT1je138KLzc23zIXyHsRUYLBsDQQZAL0I22b+TTFvap
         +z6C5t6THmpCTPwqf7RI1e8Z7wrw5XQDLS4dlKBkDagl6q2iIlm9arvPSN4QTXdg8ni1
         Jh0Y6STuqu48HmhYOWh/RZ4olpvEhFCnMhWla9Sb3IEl6+0GsLAy55Jq94S7OWga4icy
         qoP6aWuFgIuEQNtTwXbPwNN+OrWJVu5DsQ39vRLxeWZPA9ja1nVp0L6joUlN+YQQGzC2
         ysR7wdVVFuZSAIUYKl7Vf14I43KsZiYxajq1S1Rmm68DRrHotK9JfI12lYBuaJMh3eVX
         Uo8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=p7DSrhNN9mgh9piwDzB+aKlMKd6oEkni0/LlRL3wsA8=;
        b=qAp0UxIgSHYiXHS+qc0m1TF9LlKK81Bg2G28kNe+aom5shXBLeZNYeCjEKhEPMsfyZ
         63dsSOC8nj+TprGOlYTXm6iDS7ar/yMFCpHtX1kQpmVANJmKBZltzoEF4kA8PTtGwGSJ
         j55txlYMzGN8E0QW/2HSlsqIU+tT6Jwetn7jW9uyMYBT0oH5VmjF7Z8qSvtaLpCPFjyR
         UjwqocrrK0LuAxQGC2VmlvxJLkPQQnbCYHOnsuYF77W5TkqVN1I2NlvTci44qPcVp0e/
         rMBHABInQW8rSEccDKxLXorTqw6oMyrUBq/6Nl7rSPfCoQ8DXSvqQuOmdop7UWmYneJ1
         6eyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=pdrcOjFa;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p7DSrhNN9mgh9piwDzB+aKlMKd6oEkni0/LlRL3wsA8=;
        b=D/Cw37hEX1ZqDV9kCHlREYqFMi7JLSjvqnkY2Em5esyBbsWd/XCO+Sh3zwo2Y3mSoR
         0NLwRkkYcTRby2P7CVDEZOhFbyg6bKWVEWcVIhL1KHalFZanZeDm6yRYFddFKLFWnczY
         7zfOI5K14ykjlCKqdabPUg7rhcphX4zGjhPJyODYxVnbpT1t97E1FkTzpNnMZei8kQvn
         cZMke/BzcXPLbh064idJmS99aattvCIsG/dEtqGe4YtfsqVRmJt7uVMToQL8Bvn7MRQu
         lHj7pzKN8/LfiXvd3RMUlbQPDZSwnBOyxEYfPzgJniBIf3kp5topGzm+8ygglQnoszoH
         QM2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=p7DSrhNN9mgh9piwDzB+aKlMKd6oEkni0/LlRL3wsA8=;
        b=d749tSIE+mcZ3phXCQvI7oEL4vHV4zFIifLwFg6f71B2/B0KnOMy19ln4q6K1kHYyU
         /+lr/eFmX2+SeEtBXtlBR1IrYtXUGm6p1oa58D3NdjWg/8LCWPJjlKGvcuwpCRPDn+yK
         ImV+667hj9U0FzQF/VL2zaXTM2TOU6gJxqiAVyTpINKfjwKrwWijhm02ScVAPUPyr+bo
         25D9tW6tZyiVYa4WoTUknY1SNEVqh28oG+BKZVO1zSvZfpjD5JJVKUlUPDIordjTtW5t
         KhoGh6cApyq2SBvs3UU9P6zQ0JYnENpS6P9GpcvH2sH8NaxKv21Blu6XHFnCKZnAXlOD
         2a1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53221kCMYUE4vqiTLGcoqIY4GWxT4+oYtzBUfg+sQK+AEU4QcfUY
	d6zSmXMyJd6WujY1V3HN8XI=
X-Google-Smtp-Source: ABdhPJw0QxLoJnjDwxqK+C6QZUT82QjV76Zw0FqrYigLmZDQxbmapBdrJ7RHXb59cqg9I/+865eHrQ==
X-Received: by 2002:a17:902:b206:b029:dc:1f41:962d with SMTP id t6-20020a170902b206b02900dc1f41962dmr72479337plr.28.1609741360984;
        Sun, 03 Jan 2021 22:22:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4881:: with SMTP id b1ls9056383pjh.1.gmail; Sun, 03
 Jan 2021 22:22:40 -0800 (PST)
X-Received: by 2002:a17:90a:1196:: with SMTP id e22mr28287064pja.189.1609741360441;
        Sun, 03 Jan 2021 22:22:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609741360; cv=none;
        d=google.com; s=arc-20160816;
        b=HQYdfqUMkHNmI2xKudTjmJGvKf+oCWnbq3CWMKEyrLSNg35c2+/ycvBcG26C73bU0a
         Lw7CAcQfwZ9+EUGagB+yV5oTB8aTKm9AVHEQX0fqunZVzT+hk4BaiXQNsxDO3m0nfvCx
         Nl67QRw19Kc5RIN7OycaWuFxiOozW5C+hLCclafJTeCRGLMAo0x8a12O3i1iKq1DZEF6
         qAo+oM3CVHT/MSQfMMJOhSa/ebiYyXxo5sIhBVbBNXZ+khb1GU58/f8HUb636R8MSbQ9
         HVuHJTbPVHnZDjWbMzpL1B6Ds8qKSo4Q0cHPjHROlTjNDXAkJj/jdrU63FTFhQBKx/u+
         tPsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=i3zLV37UoQGBxAAUgHBj/zVXWGYnaznsGYKDdTlH6Nw=;
        b=Rw4an8ygEjHHM4F3j3m5979l5PEiIvXLqkeT5pa+CfpgxvwJzbglOgcAMDFVXeMyf3
         gONeLmEzMsUMVi10d9o8Qen6BXk4H1LyyZbWgakSkLRIR7d7d9GmWledVB1mOtnFRuxK
         ONZPkQcATxS3qhidoWFvBUiq1OYtTDeP2qAJ7ULTV4fjFQSQtNVQCvsT5OYQ+fiTJXKU
         +4PxGpomWKw+nLT1zR5KFbcsbSAsX+9xtn274ZxpTK255gkgSq9FDcfi5Zslsx4OkrfD
         vCSwyQDa5AdGPoZBVdHexXtN6VQXVhoJUsTmcxYmlUCJ3GKbDaiO8drWs/H4KQivx+/5
         w0gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=pdrcOjFa;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id q15si3915082pfs.1.2021.01.03.22.22.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Jan 2021 22:22:40 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1046MU92156425;
	Mon, 4 Jan 2021 06:22:30 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2130.oracle.com with ESMTP id 35tg8qtumw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 04 Jan 2021 06:22:30 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1046KILc169108;
	Mon, 4 Jan 2021 06:22:29 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by aserp3030.oracle.com with ESMTP id 35uvcn24n7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 04 Jan 2021 06:22:29 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 1046MMld020483;
	Mon, 4 Jan 2021 06:22:22 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 04 Jan 2021 06:22:22 +0000
Date: Mon, 4 Jan 2021 09:22:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Vaibhav Agarwal <vaibhav.sr@gmail.com>,
        Mark Greer <mgreer@animalcreek.com>, Johan Hovold <johan@kernel.org>,
        Alex Elder <elder@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Arnd Bergmann <arnd@arndb.de>, Coiby Xu <coiby.xu@gmail.com>,
        greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] staging: greybus: fix stack size warning with UBSAN
Message-ID: <20210104062203.GP2831@kadam>
References: <20210103223541.2790855-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210103223541.2790855-1-arnd@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9853 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 bulkscore=0 spamscore=0
 phishscore=0 mlxlogscore=999 malwarescore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101040043
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9853 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011 phishscore=0 bulkscore=0
 spamscore=0 impostorscore=0 suspectscore=0 adultscore=0 mlxlogscore=999
 mlxscore=0 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101040042
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=pdrcOjFa;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
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

On Sun, Jan 03, 2021 at 11:35:32PM +0100, Arnd Bergmann wrote:
> @@ -1050,78 +1088,28 @@ static int gbaudio_tplg_create_widget(struct gbaudio_module_info *module,
>  	strlcpy(temp_name, w->name, NAME_SIZE);
>  	snprintf(w->name, NAME_SIZE, "GB %d %s", module->dev_id, temp_name);
>  
> +	if (w->type > ARRAY_SIZE(gbaudio_widgets)) {
                    ^^

Off by one.  >= here.


> +		ret = -EINVAL;
> +		goto error;
> +	}
> +	*dw = gbaudio_widgets[w->type];
> +	dw->name = w->name;

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104062203.GP2831%40kadam.
