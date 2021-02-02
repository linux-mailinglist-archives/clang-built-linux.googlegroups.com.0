Return-Path: <clang-built-linux+bncBD7KX55T2YEBBRER4OAAMGQEZNMAI4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7685030B5DF
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 04:36:37 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id q8sf631063ljj.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 19:36:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612236997; cv=pass;
        d=google.com; s=arc-20160816;
        b=OXdsSu16GqXzK3WZgVOJc1isbkb5Z5z4keizVd2NGPCYOFeNK9phKPb+GesjDLxZvU
         sZfTVr4rDHJw+g00MpJb011HvPHaawla/KlBbkBNoWIWQkDBDuxSqn51O+qPPRVcup7C
         7xI3X57AtVFPDk08ta8j82exdATwTsHODPkZDj4m43neU+3CV78x7tgE/l7denHf/7tS
         lBmMYT17T0+LMWgpkWOBrMq0mxlEp3G9fQo3b0FOnlQo8pR5+9mwc7EUBbH6iBNYEEyo
         TRg4a7zIz8Sx+0/VxJFXXpNZrR+R6tcsOuNnw42XS2LUBeEDa4Wz/2tRyn1U8TZJs3/Z
         sc8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:date:to:subject
         :content-description:mime-version:from:sender:message-id
         :dkim-signature;
        bh=J+WAh3hV0aYPY9kyXcGcfK8r98H/8xZXwyIYaUpcEW0=;
        b=lSPQ1RHkXMcp8BmXqlNqmRPBcM3tDdAcIZ6gfZw+zvL246zsXsh3zZ08r9a6H97PgP
         +fgDWipPmyyiPkz8AoH2NhMlWIkwOt9Z8kQe2KTVDjTCnj9l02YhsDHWSiUzNJtBIPx9
         JWqVRP0dsm3wqzh21W1VwF19nPkcPTyjPDR+EiryVFhOCp7fOk63DJ4YhxL7wq6FS0vs
         GFZ3xWWLw4QqX4Z5sp7Za8XjImIG5GHDWtP61yK+X8wqthMOcZNgyHKJgFUpNe9Ep3qG
         CmRaJj0Z2RZE9Yx14IWjdGk+ZFdIlOF+zSzTQ8Nm2sb/LdoPGYev5MX1fuXFXsiXcTgH
         iD7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mLJksm8U;
       spf=pass (google.com: domain of ndiayekhdim3@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) smtp.mailfrom=ndiayekhdim3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:sender:from:mime-version:content-description:subject:to
         :date:reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J+WAh3hV0aYPY9kyXcGcfK8r98H/8xZXwyIYaUpcEW0=;
        b=DUGePGE7BdGybP4e2vz6rlbX9MSu6fBmXc8cFeOtXg2lvP+YbnOneD789NauSTgQ71
         7vlJ8QdGm3W3jAAHR7phioSwtHODO4gMcwl6ivE6fjsu/AGTj58TU0pegrzPOHr0Yj9b
         w2H2FNQ/blcoVPy+gC1ESTMpFSdRcYTQ17I7L1h85QqdcU578otZ83qPVdCZGoymCjI3
         I/YypEHNpDz5UXtx4ZaurGVmLQeTLc7Ro80tI4VaDYgf69VkbDiXNtKixJQSTDZCzdyT
         Uc1VssmV7rkScAEz8J4eVcx5yp+quLU/6/cNKnL6LoqxW9lIvDd0RiuZqJPpBYyffWD4
         Y9KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:sender:from:mime-version
         :content-description:subject:to:date:reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J+WAh3hV0aYPY9kyXcGcfK8r98H/8xZXwyIYaUpcEW0=;
        b=AdaXgqr3Y8rtLJ77OQPrni7lNBsM3xPrbB2JzoA12MbH8IBGqMtpOZFj5OFj6iJ6ED
         Fy1uf5crDjdFSVBKCuMpG2B9ySnFFCwk8Ml5vpOxupW820YtuJIpnBn1xPSB2B5tA1fH
         W0rS3uoHxgOgNqi6t+2HkhNG5CyItEyywW7ScFkkNnWVw90KfGNh04gUey8fyHq50/zw
         6cnKuHxhBdYAHHTm+hdIC6wWQQ7YSjq8VzNXOMj1An5euAatotS5I2txB6BzHyfQ9/aU
         HawMUynE2HMy+BaMJRqn8FkSla07eEcZV+iiYnvtE3tAvry4MW6PVwuqz0yaCiUoYY7G
         IM3g==
X-Gm-Message-State: AOAM533VcFhSnEUDU8FVcmKE6mV1LxHAu0TFA9rcvkZ0At/5Ur4S+vwk
	33ArS+MKRPPLfeqmkG1uGGM=
X-Google-Smtp-Source: ABdhPJzZe/O4kni4yEEiZmFg0Kfnss5Pa+pS0fOzEJmYMX04rCaUTmEtHy3e4qJ9r3LP4bA0LQgBkg==
X-Received: by 2002:a05:6512:3743:: with SMTP id a3mr10041064lfs.8.1612236997047;
        Mon, 01 Feb 2021 19:36:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1314:: with SMTP id u20ls1287349lja.9.gmail; Mon,
 01 Feb 2021 19:36:35 -0800 (PST)
X-Received: by 2002:a2e:3c0c:: with SMTP id j12mr12256167lja.305.1612236995828;
        Mon, 01 Feb 2021 19:36:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612236995; cv=none;
        d=google.com; s=arc-20160816;
        b=WLpH/yFS9phqanr1L1YSUbDo4Iz4pXh6evnZnigMymXP9ZOWjhQwsAxbr7OeJJPq7m
         qygKmL2GbeK53SbLXxnpW2miwYSWa+/BoicyjfYA3r4UAeJAWpc+CZ0v6q0yDgy4pqal
         UxvqrYup3mqRC7TMJ/Fad2jlmdmQX9cD00B+Z6MulpnKO58Qs0R+Jrler2VRzRmDpPR7
         BuQItxdrBYgcudvnM4AARwtSuT5C3a6dHFuEpdW11lL6IeafoH/wc6qanILdIUc2YVnt
         xfN+8pZCtWWwCMTdsDBs0hmzuQLWhh/aKfIh2kidYjJ744Ue9eM6GMsnhhL0KNPdcNv9
         uxrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=reply-to:date:to:subject:content-description
         :content-transfer-encoding:mime-version:from:sender:message-id
         :dkim-signature;
        bh=PrILWatQiBB/YexVPvDZsH566iBzGTKnf23zrhwD0wk=;
        b=W1g5IHZddF/IIYrqYGSQzTtV1OtCJLOjSWY0IcxcD+2DKBrn/rMY8fpFaCdGV2EX/D
         a5xewBE2CwIo4KdIrgzOifSZl33APh3Lwz2iOW/ZE26rlMnC8YNyCIKp63GIEqZPuz2v
         knY5DEQtlkoXTQDkqp+oadPmTFvhBOd6MVSo1Wr5vWjHwLAqETSb3Ymtdx1WCuxD/sDs
         ukUQKhWpvIIQEE6BfjHi5mu24zBRKj5bFeKnHOws8OPU3r3zPblPp4ThXe5BAQtt5ma9
         7jEQCXqNaxFol6c3+RcVMxdTcpLS5cV0hydFsUmtrDXg/WlSp4mn8EKgwjYLluhYB/t/
         abXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mLJksm8U;
       spf=pass (google.com: domain of ndiayekhdim3@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) smtp.mailfrom=ndiayekhdim3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com. [2a00:1450:4864:20::32c])
        by gmr-mx.google.com with ESMTPS id h12si808593lfp.7.2021.02.01.19.36.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 19:36:35 -0800 (PST)
Received-SPF: pass (google.com: domain of ndiayekhdim3@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) client-ip=2a00:1450:4864:20::32c;
Received: by mail-wm1-x32c.google.com with SMTP id a16so1059740wmm.0
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 19:36:35 -0800 (PST)
X-Received: by 2002:a05:600c:28b:: with SMTP id 11mr1600990wmk.98.1612236995413;
        Mon, 01 Feb 2021 19:36:35 -0800 (PST)
Received: from [192.168.1.8] ([41.83.208.55])
        by smtp.gmail.com with ESMTPSA id m22sm30375927wrh.66.2021.02.01.19.36.31
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 01 Feb 2021 19:36:34 -0800 (PST)
Message-ID: <6018c8c2.1c69fb81.e3d8c.9bff@mx.google.com>
Sender: Skylar Anderson <ndiayekhdim3@gmail.com>
From: Skylar Anderson <sgt.skylaranderson200@gmail.com>
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Description: Mail message body
Subject: si
To: Recipients <Skylar>
Date: Tue, 02 Feb 2021 03:36:29 +0000
Reply-To: sgt.skylaranderson200@gmail.com
X-Mailer: cdcaafe51be8cdb99a1c85906066cad3d0e60e273541515a58395093a7c4e1f0eefb01d7fc4e6278706e9fb8c4dad093c3263345202970888b6b4d817f9e998c032e7d59
X-Original-Sender: sgt.skylaranderson200@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mLJksm8U;       spf=pass
 (google.com: domain of ndiayekhdim3@gmail.com designates 2a00:1450:4864:20::32c
 as permitted sender) smtp.mailfrom=ndiayekhdim3@gmail.com;       dmarc=pass
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

esto es urgente / can we talk this

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6018c8c2.1c69fb81.e3d8c.9bff%40mx.google.com.
