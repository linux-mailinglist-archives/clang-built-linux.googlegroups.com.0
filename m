Return-Path: <clang-built-linux+bncBCA372OYYQMRBI4A2LUQKGQEUV5FPDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9600C6F3DD
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jul 2019 17:09:24 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id x10sf33027481qti.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jul 2019 08:09:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563721763; cv=pass;
        d=google.com; s=arc-20160816;
        b=pS1YA/4oH6n47CKcKCKkeNTCk3ShvRAB7z2ZJjs2X0n6E4KYb4aOYzXei1I6UfCIJW
         Oq6WttAS84Z6dniSQ+IQ4VacPPVel2fHrs9qlug8MxpO5ALd4lBXZ9znblD/Xm+ZtbhJ
         F3ylblRr6T5fETk2WP9gogUwaQjEXow0fhE8KLuc1aajtrynl6UmXSc+kugIS5zecCd9
         h3Q3h18jIFlC3pBmIQkaIeV/5wxSxYkjwYSkC+tjvDKhtis94McN/N9hjEp5i9dQtDS4
         3f9v+X9elVAwtU5ABQnrO3v8a/xDi9FjmW3yUiCdrwp4riKjHqXLbAiqMh4oAGmAh5vr
         +o2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=MFk40qBvDGD9+5GWm4fhSuKWpWhPfzH6PF+BbfkWkS8=;
        b=f6VZWUQNXWVBR88xxIp48LIJJV5OV4gvZULM+WqzVJBhYfseO9HOzouIzhcehTPmst
         YuOlqE6qO7JM752PtDS1wtfwP4+Y/aKoSmKEnNgAIMiZOlwys411PhZXIfnC/+VArQrV
         kSawsPVdcAZr+yu/HqtegFC7oD2EGCbz5lXGpZiIJjbmU9YBgDd2L897ZBoOQvhVZ4WD
         SH0jawCZsVZ7FiuvjqmuouisPyA0aQls6E8M7Nbv1RsavyM1J5GIUfBZyLjE17sfCq9w
         AOX0l08q/YVvWQuazY4aDymN1MsLjpz6cvrWThfdc3Fqxu0Uckmevw0GCD23TLe5CZap
         094g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M0IgfnkG;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MFk40qBvDGD9+5GWm4fhSuKWpWhPfzH6PF+BbfkWkS8=;
        b=F7Wg0TSl3Qwch74e+vwxNawwKaZf2vhODegABJkmvPGyJ/EYKDnq+3fL1e3jdb1oPk
         GuOqnu8Y8lDAE5OBAqeyjKR4V31HxuK72UNHosxf7CeLt1pndDwiB0yqDGzPzoSOZQxb
         yBkDkGLk4oJTsbRH+g8bp+u+9RFg1jlp9ruc+jS6l3QhfI4VAUC8QZdImIEVubVVAyi3
         KgN4/Vdbk5lyBy82oUNtBJX7Suq36pXG5ZBiZDjWmG/2eQWlKxSSVLqTB1BFCCLZqW+X
         VCCvQ9l3SLpeBf4iUBkhQ+UjeO+ZFEzgVpfySMQklCAKH/MpcIcskx30syA7e+ZwfARI
         rksg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MFk40qBvDGD9+5GWm4fhSuKWpWhPfzH6PF+BbfkWkS8=;
        b=AISlCYaoZCDeYTGPG4sz3n2i5u2+TgnZERfUkI7F45qz2rZDCXBdROACpBdwWfZFCd
         a5YIC/EJNpfm7Be/jTugki2HEZz7IqpDxjzy+funhzhSjhP3wBOQ0UW5ibO1bAC4dD9g
         XIzTByCfLL/SIaeg7X7vNlyT2gKO960RY8N9kmzkNAWePQcLEY6WLsq1dc/mjLFuwQ1T
         ZVDiWmiAONP5jnTk9cQCh59oFX7e+QDkdiYVXLxCWr1HVwk5tUohy9/p4aj0WGKjPa92
         Si/pdaOCSur8Y8LEp2X3wMrsXxFJT7j/4BKEFp+k4KMX/yA/mYoKaCb8IiVqlsQWlQ1Q
         B9Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MFk40qBvDGD9+5GWm4fhSuKWpWhPfzH6PF+BbfkWkS8=;
        b=MyH1zeVcBbnDlvqvbWZIZO3B6YmHy/K9btfejozFRKvFwM96PogxsEOXzYWfseAC/U
         QBTm0jbx2HiEEEmRX3c0iwIFOhZdmxckwktGQW8pZZPkoYFMpUV/xNuKAZA+o5TZzjjI
         6BFkdEQewCJ0khBNKDTTnVX3Egh0gRO0q/h1nzGhObf19v3WuugPCB1c8QzjkbSEJzWy
         MTTLxt0J1SjIdZNRXcL7E3zpL/LXQIYLG0dSosjmLHDdGCKw7RWXCc5pBUKHjKwfSLMU
         IGrVpsoA6DeYesEwCa6VkG4EXkrMh8Fy/57yIX0KuPn2WSv0q8v2kZjkLgFsKDxP9zWx
         B2vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVVuYA0Bvij+LjtmcDvJzlT6O4tFSLCMJzIaONeUCkAH2BoT25B
	/4ehiInIc2f/uxRgpPV5YRM=
X-Google-Smtp-Source: APXvYqz4CkiF2QSqtUpStwzzoK6VcQCJg7O4rHwLvq3o4m7SgaEnqmBV/oIPvOpLNflHdgJV+FLnaQ==
X-Received: by 2002:a37:94d:: with SMTP id 74mr43397321qkj.101.1563721763241;
        Sun, 21 Jul 2019 08:09:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:49d8:: with SMTP id w207ls11325147qka.6.gmail; Sun, 21
 Jul 2019 08:09:22 -0700 (PDT)
X-Received: by 2002:a37:709:: with SMTP id 9mr44263547qkh.2.1563721762975;
        Sun, 21 Jul 2019 08:09:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563721762; cv=none;
        d=google.com; s=arc-20160816;
        b=IF8zJfAYyT4bbrNViaAsmQ2Guq2isoOkZDvIeAPLYTXHwMs9X9Vgm02w6GD4oNFtWe
         IjtTwBX9zJ4mut9kHlDef8aAOn5HNdX07aTK6zm7huEezv9FJz3R6AXa0TUJ7gmJVByM
         YMmoMBAVoUpltehiBCgDwo5/jC3YVfg0GNcp+XpYDW+wCi7tI0UoBZreSjnfBwMDhwn1
         JL4nZvUoDuUVESRNcoKs3ENkzDAViim5HtOPFueZrWGtjB5iv6cH5iJHswXRcHBmqgqG
         Tcm90BziLlorxe9vRmILGf9/ieiXdJfPDTPuFh+yFB3LqFX4XhgO5IMu3cq2EZ9HsO54
         SgTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=zTRfDnQwse7xwx9zsIrsgfDT+sSvrbhwGJep5JL7jRQ=;
        b=LtUzCz5McakSjn8lc9F0M33iXVcnHl9p5Ufx15TsAF43smm6NJLj06mzZUPFpV3+ny
         LwF79Qevvzv5LR72455ngfJLmTSVseLwSBmJ5R55OJiBq1itppmB8uqbaAdr6tu8ugdT
         /H3tc9pJR+NaD5vuIq6Tem/9BT+UGoC2RMM3pH5xHv1B5ik5hYaVvo5EmKSow+VV+chj
         B1FQwDwpAjXrRfIkV6LkuTlQEZxXv77He/OAJks40n7OiGSa+u/fGmVI5tVKrIefi3TA
         8FI8Lr34NO6t/aA96bnrGbmCNIIS6e6We+3dDr/UZiRqYXxzV/7FoQLLNJCM4BkNdqyp
         OkxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M0IgfnkG;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id c79si1677198qke.4.2019.07.21.08.09.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Jul 2019 08:09:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id n9so10219998pgc.1
        for <clang-built-linux@googlegroups.com>; Sun, 21 Jul 2019 08:09:22 -0700 (PDT)
X-Received: by 2002:a63:7455:: with SMTP id e21mr61696858pgn.439.1563721761724;
        Sun, 21 Jul 2019 08:09:21 -0700 (PDT)
Received: from himanshu-Vostro-3559 ([103.83.147.157])
        by smtp.gmail.com with ESMTPSA id g62sm35531120pje.11.2019.07.21.08.09.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 21 Jul 2019 08:09:20 -0700 (PDT)
Date: Sun, 21 Jul 2019 20:39:14 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: clang-built-linux@googlegroups.com
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: Report of static analysis tools
Message-ID: <20190721150914.GA32480@himanshu-Vostro-3559>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: himanshujha199640@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M0IgfnkG;       spf=pass
 (google.com: domain of himanshujha199640@gmail.com designates
 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
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

Hi,


I have created a report of current available static analysis tools
focussing their lock checking capability at:
https://github.com/himanshujha199640/linux-kernel-analysis/tree/report/gsoc19/reports


If there is any section that is incomplete, needs to be rephrased 
or addition, then please let me know.


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190721150914.GA32480%40himanshu-Vostro-3559.
