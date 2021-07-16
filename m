Return-Path: <clang-built-linux+bncBDRPZAGFRAFBBJGXYWDQMGQETJ4IVHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 919B03CB6A4
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 13:21:08 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id p13-20020a05640210cdb029039560ff6f46sf4666163edu.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 04:21:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626434468; cv=pass;
        d=google.com; s=arc-20160816;
        b=hOjNrEt8WJAZCycdUUn/ji+V/bqOcnCdIvteNPsu5MgPaqGvfWsj5Nj8Z4lVGTznWK
         wxrCzFKJ6l5rjp8HjuaoNaTlcVeH7y5YNzD8ChSxgj1+6CnYZWc4clTvaLI84wb2N8qI
         I2G+SRrl6X+0dp+aMI/SEWmiIlux1oR3jseNrw3hZDEvDoFFMheTWX7qPjO1u5J5UHhm
         CRWPcE2ZU+W3MbxNcGO2oQzz9zIN10i99fI80pQN9wWsjlVclBImfMxiVl1QRtJBEpCL
         o/xRuCC3SY1K9nyRefNiKWQcCln2N2s4BvoJk2CVcqTkAmO4On+odH2YJTx21e7mzDcA
         wh1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=Aw/u3ppRoPsyOaCTMQAgQih1kenBIuJcNgIBUr8a+J8=;
        b=iW8mOlgFZUrxiU5AsJEld4ljyVU5w1fRoSb9O/Sd0ZR+L0+p2v+zAC25vsOWjByNZB
         8s8C7VUy+iUS/SgjYM4u8ywvjF0iNIx7udIWf6bU9BLnls0USaRrHGCXhikMO6OoUdDw
         PswV1A0n/0emgGHNPjqDyHDf4EQpy1tK2EUJg5fbwLAIn4zB8mDaw81w0KPxmq/Bv8AC
         RCzkJfgTuFTHPvXzvPPwS7V6fImtVWehkJ0lNZ/UBBqJNzoUrSUICQ3HTSYuEJXNso0d
         GfIwav6UJenOv5vhRclSl8LWIH5CJ9ZLjnmCFwNKG1Ve1OzkyzlrWzyoAA+bE7JJLNJU
         K4aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cA+tbdv6;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Aw/u3ppRoPsyOaCTMQAgQih1kenBIuJcNgIBUr8a+J8=;
        b=Gi4CJUpbu3yHuB7Cyvp9U7mgo6FpaTJ8s6eklAAJlUeUXxs+9qNzZXmOYbB+HS/Lyx
         bLnmbJTYJR/7Tslwbc7bImp8H7qxM3J9qLxed6bilsgJ2D041r+pE7ZsC9tpaG2Fqavo
         ldQElvpjUhp8bfKPHqvKl4hJhedDlAX9k/WZdMfHibmJaDu+2A45hNTSdT5WvgKqp/+4
         T+C1+X7gQZ7sodNXxpZ51QbXexm81hBeiCfsaD5X9XGOJvScaq6+k4V74x/DzU5ZUqc3
         7yyiveZyMwOleYZmDQjsbkYf0jQA6dfAUuBSNpdfsmKTzCxv3OYgoCRUMGCwaWAQfKx3
         R5HA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Aw/u3ppRoPsyOaCTMQAgQih1kenBIuJcNgIBUr8a+J8=;
        b=rSiiLsHNSFWMTcaG8CWCCvE0aFLsLxQOuCAPMh1CSUip0gr1PDb+U9GE4YAu34tdNb
         +bJ/KfsZ6CL5AybXZsOkPMNoSngeNewS/+mEiDsStbRMoSlxp3Z4FtlYD6M3gC7eKqtz
         iZASjjW8fr/hf/6yVwWhjpSsW3W+UiqoK3dFWHzi1YwONhMvUQ+cIs0Sh+F5Lj4XryFH
         GXh7sTneqKS4dF6hR+oTGsWR6Kz/+X/b0KJxb3wtPrju/taZOO/v1EHJ5gAKLZQldAxV
         qWWTjHW04nP7K0ZD5IXdB39VTNd7W8PUM8GO6aRBwBr8cWb2ybNp1CCBbbJPpUpVdu89
         nTzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Aw/u3ppRoPsyOaCTMQAgQih1kenBIuJcNgIBUr8a+J8=;
        b=rV7q3UJPt1O9LEwzfO2pOE7McrGHIgz16VHxJnyP6rQrqoclVRyvKuaoA1H2Crtv8S
         a4ogOgXjC5oJKue2wCku/D6e2mEaeI7SgxfmNZzi9OKVt4LyC+UMLsg81f/Ijz5IJ3qC
         Ay+ELbxOkTIsgH3TlCHaKR7zF6+FszsJ5T9DRMd/OAE+arMJrYmo9LTkiXJ1tIMe+2LY
         XowOp1BmZW4wVQYAPs8dXlHg1JBk2aYVzep83tXSBx4DMw0YeIeiYZ6bGVnqWzTszsyq
         aRz7qoAJM4K+8ikFEfZt+QzXo4rinkXno2l04zs+ZvmMBfYlxJpaZsR8lkvJHlax3Tz2
         jqQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bLol/AlEXzOrlRYAbaVSQtioR7ZM/rUTifUzFP8Ux3/zPC6dv
	y6esSMBJYeiiZNEP8BF2DMg=
X-Google-Smtp-Source: ABdhPJyujK25e5ryCFwqFltWwtXlEIoaUDrJ3K/uk3095iwGV+K8mTrI55XlgVljdECF+x9NGhjfEg==
X-Received: by 2002:a17:906:3693:: with SMTP id a19mr11533303ejc.237.1626434468302;
        Fri, 16 Jul 2021 04:21:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:925a:: with SMTP id c26ls4593695ejx.6.gmail; Fri, 16
 Jul 2021 04:21:07 -0700 (PDT)
X-Received: by 2002:a17:907:a04e:: with SMTP id gz14mr11270667ejc.24.1626434467336;
        Fri, 16 Jul 2021 04:21:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626434467; cv=none;
        d=google.com; s=arc-20160816;
        b=SGvYN6JFwHZ6ioEYEmNsfzb10TR9UTD4vOQxvQJ22yP7CjOCylNCSlzE7zU6goey6h
         5lU0/UBKvAwmQLecsjnRcWxyxhLMrgnXaAuCg1VI4PQlFKUQDqMTD6c40z+LTaRBe+0S
         r2vfsjx7jild5P/RMdx8TG3XxcZXGZ0cVS+0CpdWxwcWtsA0rrrgdu7eyZD6JR4Ml/Dd
         xe9HNx55rlQpgJoTm4mNGE65ufJ0d12J3YJbL4eCvYIxRve0EqCSi+qj7lg2ieyHE7vv
         M05seFaYwQ4Z+0MlXN0/n08tNPVXbOsAaEw/TDVorGEF/Kr+gBF+NEFBDYwlmbmFhlYz
         DTgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wnHGNPq7bMhUlKL335UJdlgKd8zJCtv0oGlTguK7nSw=;
        b=mF/PXgt/JvoghYhMOelXJZ2iUqlffHL3SIqzxeCivzFFWWDXI1e/h1mjtICrUE3vp3
         DcmACvd09dspx8LkDXKYPEsGieg32fUEJTojB9arMZq4CHPXv41sgeMeSFw8RwLCu8nS
         5JOP50tKgrKb2aQrhVPAY97YbfrvPQ+08iT3zpq6jyUTENn5Q3h972aPkp/VZ4bOMM6P
         qp6Zv7+oLOuvxE/K3ZjyvhB6Yc+sTHVTcDbTHKJQ+rpi+Uldx8EAjwHZZOyT6hAysLU8
         dBkbvahccKTpJeYUlPVnI5cQAm5XJQLsLnpa/PsTB3ssxSJobfPizQrocK7qH519YOX0
         VwEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cA+tbdv6;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id s8si304251edd.4.2021.07.16.04.21.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jul 2021 04:21:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Received: by mail-ej1-x62c.google.com with SMTP id nd37so14616947ejc.3;
        Fri, 16 Jul 2021 04:21:07 -0700 (PDT)
X-Received: by 2002:a17:906:af0e:: with SMTP id lx14mr11377132ejb.54.1626434467052;
        Fri, 16 Jul 2021 04:21:07 -0700 (PDT)
Received: from localhost.localdomain ([5.176.51.215])
        by smtp.gmail.com with ESMTPSA id a25sm3590064edr.21.2021.07.16.04.21.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jul 2021 04:21:06 -0700 (PDT)
Date: Fri, 16 Jul 2021 14:20:57 +0300
From: Pavel Skripkin <paskripkin@gmail.com>
To: syzbot <syzbot+deb25600c2fd79ffd367@syzkaller.appspotmail.com>
Cc: adilger.kernel@dilger.ca, clang-built-linux@googlegroups.com,
 linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org,
 nathan@kernel.org, ndesaulniers@google.com,
 syzkaller-bugs@googlegroups.com, tytso@mit.edu
Subject: Re: [syzbot] INFO: task hung in ext4_put_super
Message-ID: <20210716142057.0f1f6045@gmail.com>
In-Reply-To: <000000000000f36f9505c73ae373@google.com>
References: <0000000000006f809f05c284e0f1@google.com>
	<000000000000f36f9505c73ae373@google.com>
X-Mailer: Claws Mail 3.17.8git77 (GTK+ 2.24.33; x86_64-suse-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: paskripkin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cA+tbdv6;       spf=pass
 (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::62c
 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, 16 Jul 2021 03:17:09 -0700
syzbot <syzbot+deb25600c2fd79ffd367@syzkaller.appspotmail.com> wrote:

> syzbot suspects this issue was fixed by commit:
> 
> commit 618f003199c6188e01472b03cdbba227f1dc5f24
> Author: Pavel Skripkin <paskripkin@gmail.com>
> Date:   Fri Apr 30 18:50:46 2021 +0000
> 
>     ext4: fix memory leak in ext4_fill_super
> 
> bisection log:
> https://syzkaller.appspot.com/x/bisect.txt?x=17ebaa22300000 start
> commit:   2f7b98d1e55c Merge tag 'drm-fixes-2021-04-16' of
> git://ano.. git tree:       upstream kernel config:
> https://syzkaller.appspot.com/x/.config?x=398c4d0fe6f66e68 dashboard
> link: https://syzkaller.appspot.com/bug?extid=deb25600c2fd79ffd367
> syz repro:
> https://syzkaller.appspot.com/x/repro.syz?x=170d645ad00000 C
> reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16a03a2ed00000
> 
> If the result looks correct, please mark the issue as fixed by
> replying with:
> 
> #syz fix: ext4: fix memory leak in ext4_fill_super
> 
> For information about bisection process see:
> https://goo.gl/tpsmEJ#bisection


This looks correct. I've tested this patch a long time ago, but forgot
to mark it as fixed.

#syz fix: ext4: fix memory leak in ext4_fill_super

 
With regards,
Pavel Skripkin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210716142057.0f1f6045%40gmail.com.
