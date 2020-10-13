Return-Path: <clang-built-linux+bncBDYNPDM2TEHBB3ECS76AKGQEP6OR6UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A44528D0D1
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 17:02:05 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id y14sf635718lfl.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 08:02:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602601325; cv=pass;
        d=google.com; s=arc-20160816;
        b=eKqJhQ7Z3U0IJCbQ09fVngFSEvNJXrkcudKru3Pt0pgvGYz4TcDhMfGM15c9tfQ0zY
         lYfmSuWz2aGUveNR98QJUJuGuxIFs8p0IcP4ZfnlIipJLxqsiEiyaPE7vT8kZxpxuEPM
         TZtcKu4r+Ktxq7BNk1hQ9Sk+c5+qED+B0LBtELJG3MdzoqvCZiy7YgHNlY5lASlpRetY
         szaT+WKRT3K6IFhhXw7wRExx8Yn7gN6UtcBd3B7kRjpx1Z/a3BF/9yLNBCM54j8nbI26
         I/nJwPEWAZnbN6FJCtBKloIBX+aZWhG9sF/2lrloUm0uZG7ym6hwtosOEz9AK5wUw2yF
         SCPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cd8H2SDyovLv5X4yfyVd9pvLvTHuDfS7CyLd3js3e1c=;
        b=ElMElNXQ1qFzT6lTrz9A8bMUKhgAFjqiYKe2j4tK/QmuRTGPwo08fngUJI/nyryWTC
         E06MEySR/gE1nkQuLMxDfdPUkadCtMpinMBdT6MQa4NDDedhqSFIAnl7bEk/YuKt6+dh
         cA+7sEyqGNo8uSY1qkOrpfnSiRJ9IjFcOrZJT0R+y87BW5b+E+imE8/caWncFdExXe+V
         1R7uC7GmJhZtV3s3rDQDpfimTgDaOjSlvRdKeSGCT0J5+ShjEjlEvfBTW1GWcgvlyiU7
         xpCG24zALgaDMpLd0KdKXP1MAgcWIHoMiQQoB1DGfmijG44eExDIr5TCcFSkTFxxAAtS
         E4PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cCFzG0nS;
       spf=pass (google.com: domain of martin.botka1@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=martin.botka1@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cd8H2SDyovLv5X4yfyVd9pvLvTHuDfS7CyLd3js3e1c=;
        b=KuwHNALhVCdH/t2gpP07dLuA6tY9dK86+Al+ZIL73jT8GgzXRShCTJFR5rOmMmhtmu
         TOhXgi+uXA+H82OmRBk+rF1Th4ErIVCki6SII3LEp2l3JJBQ4lST95KWTT3TUectcNsf
         1rC9uV4EPV3dBYRAFccLT2/+v9P5fc4YeCJcJenj/Rf2WmQcE5AHytqP25XUl7K0G4SJ
         iYvq6442ub8KHEVuKlMEznrKacy21hyVkBl/FQkSMOb8mI6A06hiAtUJ1uUDbd+yBQwL
         0Le3RT53yxH7w/9GJ/STv5DYJOHzqA1Y15t34NIu2mMDyD5znt0Kin5izj0eKfyj/E8H
         3+jQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cd8H2SDyovLv5X4yfyVd9pvLvTHuDfS7CyLd3js3e1c=;
        b=CEawB9mgKGPZ+R6U6AzpSoQyE5lsBX2KWCHUfFIbdpwt5FsXuKwniurEricBoxEXyP
         lMzbBlgi0u3Cf0jbj+8czYbpYBUzvE81bykHPkqVksW9HUCWoVGPuY1iRD21ZfbvJ09T
         btJ59y34ZFZvX0K0SwPpzfireuEUcKaxIHLQnOzu8hCDuzu7So5D7A6zEsQTY3YnmO2W
         iKxaobHkLiBgHGqq7w/2RAJ/SMq8GqL4Qmh7g4qxEsGdyhTGhBh8v9VtXdJN9E6TJXcN
         85RaDc/trGZhSELyQnN/pfPEb6gxoJQG8q0YZux71X1XNfWNBJA461KfyHT+sj95RRQ2
         L5yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cd8H2SDyovLv5X4yfyVd9pvLvTHuDfS7CyLd3js3e1c=;
        b=hTPh3TIDbYcIAkP8qq9mH0VsP93HUaZAIPDewF9+8j7IP+fObWjBj/g8tmv0c//7/a
         kVUxQTeacr6PeDTt0o3Wu2hLtvhBhwCPose/6l0IvPV98fKBKZaL8Svhah502gMP4fXS
         C5LFIESer102x7cqKwtymTtSxNYAXOCuvZjbuFA4r5druLzanLsDi9axxw89FzXMsSTu
         9vjltUOZeehsQW/94lpqM5M64OZGgoOTQh4UiT1DKk/t3PnGKErVjQap1oURQF94oK7Q
         syN3Alj1vfyFgJWQ0WcBqbaMQtrW+pbfwocCNJJgg9EYg6xhaN7WSi4lCmFrIaM+9yAH
         CmpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QlqaOs3LAbmQi0SqpXcqVx5iMhDo7OBoZgwlmYQAoLumm3o53
	D9rVAHylwaa9llIlSRJ8hM4=
X-Google-Smtp-Source: ABdhPJzZMYfmhfDDdpuhvaZMS++s53k6DQkmzNIcDCQaTETOIwOKyVEEtLZeC/PYJqoqqs3dtwhDTQ==
X-Received: by 2002:a2e:854b:: with SMTP id u11mr10788498ljj.34.1602601325022;
        Tue, 13 Oct 2020 08:02:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:888a:: with SMTP id k10ls52534lji.10.gmail; Tue, 13 Oct
 2020 08:02:04 -0700 (PDT)
X-Received: by 2002:a2e:7016:: with SMTP id l22mr7589423ljc.466.1602601323998;
        Tue, 13 Oct 2020 08:02:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602601323; cv=none;
        d=google.com; s=arc-20160816;
        b=hbJ5IoZ3H/NJ80lXuroOCetuw9eIUKHwu3QnMLUEufMIs9O85Giz+4zlXAjswbMwDW
         2o1EojaI79Z5fxNcrCEdROmxIuE+bo3Mdg1bweRpSvm5XAYDSg8IhaNV/+Ijn35YYRqx
         q7rW6IRjK+qorNw9ZZ0LRD1DTrYq3IPule3YQrzOLlPPvHyxVLNEfTFjMyPVpYvJ02kA
         l/67MCiMNCENINyYQUX4WBc1UyD5TyFU7WAatlIu05bNtGE9wMHSWSNCItpJIcV/y7XV
         Z5B9JslG4G8DkGdIHBaGaKS23Nm5Mboz+JUUAKJeqQ3aExmuQQv0ea2ZPShoxaObBasC
         vx8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GAM7EfDFr9OR4YTNHPZeLuBVp+G6gnuevym7qFvJmzA=;
        b=dyO+q4GdZnNcbyTVGxsf+8M9fjQj+sW6nydHNfZONRvPFVvyC3iwML8mhzfOq/v0wb
         5obn9akMKPE1BgQGMce+4XUx3tzLNCf3xV3iun/vcBN7ehB+8Xhs4TqZiInm/s4x12nu
         lyqNXn3rb0eKpAVF4poTtmUB0Nwno7zwz4GS01MVP8S1RZKKtJCg5zVv6PnXAw4dq6aM
         qqrID/4CIOi0nBItUnCuTc642uITQKOlA/bIhV0x6YBI0LQ5njFpZ3q9Ur2KKkY9KLn7
         yxbvgQFcSEa+XYHofNVIgTmeXt2XKFBkrmOPgNO1djrTvmPN0WQkYjz31B/WROJ6mfPP
         gEFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cCFzG0nS;
       spf=pass (google.com: domain of martin.botka1@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=martin.botka1@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com. [2a00:1450:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id x74si3141lff.12.2020.10.13.08.02.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 08:02:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.botka1@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) client-ip=2a00:1450:4864:20::62d;
Received: by mail-ej1-x62d.google.com with SMTP id x7so219160eje.8
        for <clang-built-linux@googlegroups.com>; Tue, 13 Oct 2020 08:02:03 -0700 (PDT)
X-Received: by 2002:a17:906:234d:: with SMTP id m13mr109679eja.497.1602601323813;
 Tue, 13 Oct 2020 08:02:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200926130306.13843-2-kholk11@gmail.com> <202010010401.JGjaiuVi-lkp@intel.com>
 <CADQ2G_H7ey8tfneOjtmDx1-hyzq1RvZzLeLZPtTM=2qOezrinA@mail.gmail.com>
In-Reply-To: <CADQ2G_H7ey8tfneOjtmDx1-hyzq1RvZzLeLZPtTM=2qOezrinA@mail.gmail.com>
From: Martin Botka <martin.botka1@gmail.com>
Date: Tue, 13 Oct 2020 17:01:51 +0200
Message-ID: <CADQ2G_E2-CYMADwwBjhmhOmHWXEVrzMTBxxVb7UHqn=ReLH+HQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] clk: qcom: Add SDM660 Multimedia Clock Controller
 (MMCC) driver
To: kernel test robot <lkp@intel.com>
Cc: kholk11@gmail.com, Andy Gross <agross@kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, Stephen Boyd <sboyd@kernel.org>, marijns95@gmail.com, 
	Konrad Dybcio <konradybcio@gmail.com>, linux-arm-msm@vger.kernel.org, 
	phone-devel@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: martin.botka1@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cCFzG0nS;       spf=pass
 (google.com: domain of martin.botka1@gmail.com designates 2a00:1450:4864:20::62d
 as permitted sender) smtp.mailfrom=martin.botka1@gmail.com;       dmarc=pass
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

Actually, correction. This parent is used by cpp_clk_src.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADQ2G_E2-CYMADwwBjhmhOmHWXEVrzMTBxxVb7UHqn%3DReLH%2BHQ%40mail.gmail.com.
