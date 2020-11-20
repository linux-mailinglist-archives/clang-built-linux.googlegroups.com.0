Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBTFG3T6QKGQEXYVINOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7172B9F6B
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 01:52:29 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id i10sf1787418ljg.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 16:52:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605833548; cv=pass;
        d=google.com; s=arc-20160816;
        b=zItHjl9Al93D2/pU5rPhb+dguvizVn0l6N37uaASo1xQPZvwuI4EOBXysHqEBu6VCO
         D3SFxae9CWlutv7763q+MEgdIhngpYlrWKaVZVFSVsGZp8XUzFZqw1UhhnYReq9TOKTh
         SLXDT2xMGJragGV/fHkDLt1egRdNfMBTTG/5kc8XxTus0M0EgtnnwmvuE2Mfmfwq+aZs
         OMZDHibvjJi/wDJ9SPT7gjK/X2J5IXTMA6aXMtpt3SJdeCiSvNCmFrW4ECBKt0c3Ct/C
         UYr5Dwcmyhpjliso2bqnaW6OK3LtMKBpIy8r6AhkVUNvJJysH3Fp9TAh7S1C40pjtjjj
         qzfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=F3hjPWr24JMoht4MyOnXTz3EpAnZHpMQo84/3tcDaCY=;
        b=fLlScSKSAH6jrgKKeFiA+n9yv4b4XRfj5SMU+VMkK4WVYGyi4NZxzn+8SKBIk8zqlF
         fWlHVbdIGc2QffaXYoem+uGYSOXNmgCXxoBauWSE2dRE/eEjNxzoXmFQg11KxVNXFrfX
         Ukd89Hp0+Q2btLXCAkerU00oDkGpfkp9cvnIA7ngGeWNAbxg1cRV1uRxPa0hy1L9CVks
         ND1meP3TvowGUnBqAlUFx8z56p/Bgx2mg8b8XpSDHWGvZhfHXhPBZJbZZsZWPBqzQqHU
         QvpI2GEsxNp3IY9hm580tmwseIJJU64q7ODPFOQCf6uChH9h9aBeiiJeTizJu+nt/kNC
         1KYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F3hjPWr24JMoht4MyOnXTz3EpAnZHpMQo84/3tcDaCY=;
        b=fH7u1dJkVio/kVWJ2c86L5q0/7yGEuW17Rf9qiBlx8mcrJ9PSsqXbDmpicNYLMZsfS
         milwm0btvG6YlWSSU3DYrLuDnRBalw6u5lEt3iiH1EQ7enCzMkL0G3YkzTu9Q6nUuAoZ
         T7Dy4mSh+7yY26HmkP1n29SUdDKaDP3tQt+cfxc/n4Z/C2aaW5fXkaF9tweaYLLsbSjX
         67XgiWI5riaD02VbmhSYbQTcCpEvwcXfEp97A7o/t5tFN5rE1QaREFj0IVc8SZ5FDslh
         IjvNpxablkzmlMtJ1AIwIntFethLi5ZXf1zDy6exWccZDUV0slZjWl72IgWRok8OR5IL
         tcaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F3hjPWr24JMoht4MyOnXTz3EpAnZHpMQo84/3tcDaCY=;
        b=DdxDAC4eiSt4/NclwFE4SKeyzPJv1alugdlPk584WTpQZo758MWbFJyHt/p4pJkC7a
         WMPUpBmMFkBjP0q1g9XyZ5U9RvbUtABCQRSaMLvMEQOS0LOoW6GfbHYYUUf3vVpAQjQu
         oRFrGj1jXc1Gn+s0yIWrNdIqFe/UKhJ28E5CA3Dk7EsPZUDOZwMq9AyagI5EZAoPm9Tk
         RsIYQx3uKxijQSkJBfq1CpqEnT1AqgBtczen/anjlY4lfRFzsUU80ZegXyUu6FHdKdjS
         NRYDo3kJjguqCTZQMZ7S4CueSP0xak8RZMkXIbzgGwipO0SEbP2c71/U+xzmDVT7MK87
         oHJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334HVFq7JYsPbHLYj2q4ksdmMaHXFhR8EzUq4PkVwcpYKNuHTdl
	ieuqJ+koDgqvCQPzn4JyodM=
X-Google-Smtp-Source: ABdhPJxIkZfod229XlUoxY1sQDmna2n5cEilmYiC4R09NEgvguDYKDWFU40/LiPOtDsBVN7HeXOyGw==
X-Received: by 2002:a05:651c:1075:: with SMTP id y21mr6507427ljm.330.1605833548721;
        Thu, 19 Nov 2020 16:52:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2ac6:: with SMTP id q189ls703836ljq.9.gmail; Thu, 19 Nov
 2020 16:52:27 -0800 (PST)
X-Received: by 2002:a2e:8899:: with SMTP id k25mr7327352lji.68.1605833547498;
        Thu, 19 Nov 2020 16:52:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605833547; cv=none;
        d=google.com; s=arc-20160816;
        b=IWCQW4YQ8/3oqEOegM2BvBUYeZdfwUErh+13xtOKd2DcedPxsdo5LkszZ0oTDi/uDJ
         +cFR2HnUpwaRESmrZL5naohOnMI72vJByV05CU7nylFIpdVoIs7I6Qqds3dsDz2Lm4sl
         VORedLfAOhnK0IVex8FP86S7XP6gGN0Cn+TDQ7M+8ckjsk+AWFrZl5F0rIe6Ac38Tups
         35hlyu06MDQV69vXb+vbThUyoI3zdBP6RwZiJuQts8ys1GLir40yiVOgQUSSMSLdZ6lF
         BJ0mA2JWOVuNMApp1rw/6HGe5apRJ7WyqIQTmxF03RXM3eH5OACIc+Ndu98GwYp9MQgM
         1Ldg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=dLbrUkhz7yygTD3dA9D6ywwNNZ5MZLTsIJino2uV238=;
        b=sD80CneW/T+48MicsJasqEiGfZ7YaCx1czSJ2a4Z4Bi8rfAhouBjJI1//0cewqZqW8
         jatGQ2TRI1MDEgpvRdqjvdvIPi0gewCa0LpVTg2XQ42vxi5lZAXlV1vsrkMxSC+z8kfP
         g0ChfRxPbA61L2vRBE2BmtOfXq7CwfXGFex5NxZzBeTRfeJMHzcQvO54uaqXENlcvrm0
         SLTlrHyPTzRRb9PTsDFq2W57ek1XQbpA1Z79xhncOeyFavI3OcfTs3Pgnd4RRzEms/QM
         iHmf0K81AF2ybC48HtEaX8AHom0QIYFjrKF0sageg+UuOQizewZ75JbEvQm9GpNBCNOO
         48VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id q189si10307ljb.1.2020.11.19.16.52.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 16:52:26 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kfuew-0082MN-He; Fri, 20 Nov 2020 01:52:18 +0100
Date: Fri, 20 Nov 2020 01:52:18 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Pavana Sharma <pavana.sharma@digi.com>
Cc: lkp@intel.com, ashkan.boldaji@digi.com,
	clang-built-linux@googlegroups.com, davem@davemloft.net,
	f.fainelli@gmail.com, gregkh@linuxfoundation.org,
	kbuild-all@lists.01.org, kuba@kernel.org,
	linux-kernel@vger.kernel.org, marek.behun@nic.cz,
	netdev@vger.kernel.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, vivien.didelot@gmail.com
Subject: Re: [PATCH v10 1/4] dt-bindings: net: Add 5GBASER phy interface mode
Message-ID: <20201120005218.GX1804098@lunn.ch>
References: <cover.1605830552.git.pavana.sharma@digi.com>
 <e4c8097e78a3277a7ac90d6a4899b110657b13bc.1605830552.git.pavana.sharma@digi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e4c8097e78a3277a7ac90d6a4899b110657b13bc.1605830552.git.pavana.sharma@digi.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

On Fri, Nov 20, 2020 at 10:25:01AM +1000, Pavana Sharma wrote:
> Add 5gbase-r PHY interface mode.
> 
> Signed-off-by: Pavana Sharma <pavana.sharma@digi.com>
> ---
>  Documentation/devicetree/bindings/net/ethernet-controller.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
> index fdf709817218..aa6ae7851de9 100644
> --- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
> +++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
> @@ -89,6 +89,8 @@ properties:
>        - trgmii
>        - 1000base-x
>        - 2500base-x
> +      # 5GBASE-R
> +      - 5gbase-r
>        - rxaui
>        - xaui

Since you are respinning anyway. What value does the comment add?

      Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201120005218.GX1804098%40lunn.ch.
